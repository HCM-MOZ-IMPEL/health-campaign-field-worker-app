import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:digit_components/digit_components.dart';
import 'package:digit_components/widgets/atoms/digit_toaster.dart';
import 'package:digit_components/widgets/digit_sync_dialog.dart';
import 'package:drift_db_viewer/drift_db_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:synchronized/synchronized.dart';
import '../blocs/auth/auth.dart';
import '../blocs/search_households/search_households.dart';
import '../blocs/sync/sync.dart';
import '../data/data_repository.dart';
import '../data/local_store/sql_store/sql_store.dart';
import '../models/auth/auth_model.dart';
import '../models/data_model.dart';
import '../router/app_router.dart';
import '../utils/debound.dart';
import '../utils/i18_key_constants.dart' as i18;
import '../utils/utils.dart';
import '../widgets/header/back_navigation_help_header.dart';
import '../widgets/home/home_item_card.dart';
import '../widgets/localized.dart';
import '../widgets/progress_bar/beneficiary_progress.dart';
import '../widgets/showcase/config/showcase_constants.dart';
import '../widgets/showcase/showcase_button.dart';

class HomePage extends LocalizedStatefulWidget {
  const HomePage({
    super.key,
    super.appLocalizations,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends LocalizedState<HomePage> {
  bool skipProgressBar = false;
  final storage = const FlutterSecureStorage();
  late StreamSubscription<ConnectivityResult> subscription;
  final syncLock = Lock();

  @override
  initState() {
    super.initState();

    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult resSyncBlocult) async {
      var connectivityResult = await (Connectivity().checkConnectivity());

      if (connectivityResult != ConnectivityResult.none) {
        if (context.mounted) {
          context
              .read<SyncBloc>()
              .add(SyncRefreshEvent(context.loggedInUserUuid));
        }
      }
    });
  }

  //  Be sure to cancel subscription after you are done
  @override
  dispose() {
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final state = context.read<AuthBloc>().state;

    if (state is! AuthAuthenticatedState) {
      return Container();
    }
    final roles = state.userModel.roles.map((e) {
      return e.code;
    });

    if (roles.contains(UserRoleCodeEnum.warehouseManager) ||
        roles.contains(UserRoleCodeEnum.supervisor) ||
        roles.contains(UserRoleCodeEnum.districtSupervisor) ||
        roles.contains(UserRoleCodeEnum.nationalSupervisor) ||
        roles.contains(UserRoleCodeEnum.provincialSupervisor) ||
        roles.contains(UserRoleCodeEnum.fieldSupervisor)) {
      skipProgressBar = true;
    }

    final mappedItems = _getItems(context);
    final homeItems = mappedItems?.homeItems ?? [];
    final showcaseKeys = <GlobalKey>[
      if (!skipProgressBar) homeShowcaseData.distributorProgressBar.showcaseKey,
      ...(mappedItems?.showcaseKeys ?? []),
    ];

    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ScrollableContent(
          slivers: [
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return homeItems.elementAt(index);
                },
                childCount: homeItems.length,
              ),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 145,
                childAspectRatio: 104 / 128,
              ),
            ),
          ],
          header: Column(
            children: [
              BackNavigationHelpHeaderWidget(
                showBackNavigation: false,
                showcaseButton: ShowcaseButton(
                  showcaseFor: showcaseKeys.toSet().toList(),
                ),
              ),
              skipProgressBar
                  ? const SizedBox.shrink()
                  : homeShowcaseData.distributorProgressBar.buildWith(
                      child: BeneficiaryProgressBar(
                        label: localizations.translate(
                          i18.home.progressIndicatorTitle,
                        ),
                        prefixLabel: localizations.translate(
                          i18.home.progressIndicatorPrefixLabel,
                        ),
                      ),
                    ),
            ],
          ),
          footer: PoweredByDigit(
            version: Constants().version,
          ),
          children: [
            const SizedBox(height: kPadding * 2),
            BlocConsumer<SyncBloc, SyncState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () => null,
                  syncInProgress: () => DigitSyncDialog.show(
                    context,
                    type: DigitSyncDialogType.inProgress,
                    label: localizations.translate(
                      i18.syncDialog.syncInProgressTitle,
                    ),
                    barrierDismissible: false,
                  ),
                  completedSync: () {
                    Navigator.of(context, rootNavigator: true).pop();

                    DigitSyncDialog.show(
                      context,
                      type: DigitSyncDialogType.complete,
                      label: localizations.translate(
                        i18.syncDialog.dataSyncedTitle,
                      ),
                      primaryAction: DigitDialogActions(
                        label: localizations.translate(
                          i18.syncDialog.closeButtonLabel,
                        ),
                        action: (ctx) {
                          Navigator.pop(ctx);
                        },
                      ),
                    );
                  },
                  failedSync: () {
                    _showSyncFailedDialog(
                      context,
                      message: localizations.translate(
                        i18.syncDialog.syncFailedTitle,
                      ),
                    );
                  },
                  failedDownSync: () {
                    _showSyncFailedDialog(
                      context,
                      message: localizations.translate(
                        i18.syncDialog.downSyncFailedTitle,
                      ),
                    );
                  },
                  failedUpSync: () {
                    _showSyncFailedDialog(
                      context,
                      message: localizations.translate(
                        i18.syncDialog.upSyncFailedTitle,
                      ),
                    );
                  },
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const Offstage(),
                  pendingSync: (count) {
                    final debouncer = Debouncer(seconds: 5);

                    debouncer.run(() async {
                      if (count == 0) {
                        Future.delayed(const Duration(minutes: 5));
                        performBackgroundService(
                          isBackground: false,
                          stopService: true,
                          context: context,
                        );
                      } else {
                        performBackgroundService(
                          isBackground: false,
                          stopService: false,
                          context: context,
                        );
                      }
                    });

                    return count == 0
                        ? const Offstage()
                        : DigitInfoCard(
                            icon: Icons.info,
                            backgroundColor:
                                theme.colorScheme.tertiaryContainer,
                            iconColor: theme.colorScheme.surfaceTint,
                            description: localizations
                                .translate(i18.home.dataSyncInfoContent)
                                .replaceAll('{}', count.toString()),
                            title: localizations
                                .translate(i18.home.dataSyncInfoLabel),
                          );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showSyncFailedDialog(
    BuildContext context, {
    required String message,
  }) {
    Navigator.of(context, rootNavigator: true).pop();

    DigitSyncDialog.show(
      context,
      type: DigitSyncDialogType.failed,
      label: message,
      primaryAction: DigitDialogActions(
        label: localizations.translate(
          i18.syncDialog.retryButtonLabel,
        ),
        action: (ctx) {
          Navigator.pop(ctx);
          _attemptSyncUp(context);
        },
      ),
      secondaryAction: DigitDialogActions(
        label: localizations.translate(
          i18.syncDialog.closeButtonLabel,
        ),
        action: (ctx) => Navigator.pop(ctx),
      ),
    );
  }

  _HomeItemDataModel? _getItems(BuildContext context) {
    final state = context.read<AuthBloc>().state;
    if (state is! AuthAuthenticatedState) {
      return null;
    }

    final roles = state.userModel.roles.map((e) {
      return e.code;
    });

    bool isDistributor = false;
    bool isSupervisor = false;
    bool isWarehouseManager = false;

    for (final role in roles) {
      if (role == UserRoleCodeEnum.systemAdministrator) {
        isDistributor = true;
        isWarehouseManager = true;
      }
      if (role == UserRoleCodeEnum.distributor) {
        if (!isDistributor) isDistributor = true;
        continue;
      }
      if (role == UserRoleCodeEnum.supervisor ||
          role == UserRoleCodeEnum.districtSupervisor ||
          role == UserRoleCodeEnum.nationalSupervisor ||
          role == UserRoleCodeEnum.provincialSupervisor ||
          role == UserRoleCodeEnum.fieldSupervisor) {
        if (!isSupervisor) isSupervisor = true;
        continue;
      }
      if (role == UserRoleCodeEnum.warehouseManager) {
        if (!isWarehouseManager) isWarehouseManager = true;
        continue;
      }
    }

    List<Widget> homeItems = <Widget>[];
    List<GlobalKey> showcaseKeys = <GlobalKey>[];

    if (isDistributor) {
      showcaseKeys.addAll([
        homeShowcaseData.distributorBeneficiaries.showcaseKey,
        homeShowcaseData.distributorFileComplaint.showcaseKey,
        homeShowcaseData.distributorSyncData.showcaseKey,
      ]);
      homeItems.addAll([
        homeShowcaseData.distributorBeneficiaries.buildWith(
          child: HomeItemCard(
            icon: Icons.all_inbox,
            label: i18.home.beneficiaryLabel,
            onPressed: () async {
              final searchBloc = context.read<SearchHouseholdsBloc>();
              await context.router.push(
                SearchBeneficiaryRoute(),
              );
              searchBloc.add(const SearchHouseholdsClearEvent());
            },
          ),
        ),
        homeShowcaseData.distributorFileComplaint.buildWith(
          child: HomeItemCard(
            icon: Icons.announcement,
            label: i18.home.fileComplaint,
            onPressed: () =>
                context.router.push(const ComplaintsInboxWrapperRoute()),
          ),
        ),
        homeShowcaseData.distributorSyncData.buildWith(
          child: StreamBuilder<Map<String, dynamic>?>(
            stream: FlutterBackgroundService().on('serviceRunning'),
            builder: (context, snapshot) {
              return HomeItemCard(
                icon: Icons.sync_alt,
                label: i18.home.syncDataLabel,
                onPressed: () async {
                  if (snapshot.data?['enablesManualSync'] == true) {
                    _attemptSyncUp(context);
                  } else {
                    DigitToast.show(
                      context,
                      options: DigitToastOptions(
                        localizations
                            .translate(i18.common.coreCommonSyncInProgress),
                        false,
                        Theme.of(context),
                      ),
                    );
                  }
                },
              );
            },
          ),
        ),
        HomeItemCard(
          icon: Icons.table_chart,
          label: 'DB',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DriftDbViewer(
                  context.read<LocalSqlDataStore>(),
                ),
              ),
            );
          },
        ),
      ]);
    }
    if (isWarehouseManager) {
      showcaseKeys.addAll([
        homeShowcaseData.warehouseManagerManageStock.showcaseKey,
        homeShowcaseData.wareHouseManagerStockReconciliation.showcaseKey,
        homeShowcaseData.wareHouseManagerChecklist.showcaseKey,
        homeShowcaseData.warehouseManagerFileComplaint.showcaseKey,
        homeShowcaseData.warehouseManagerSyncData.showcaseKey,
        homeShowcaseData.inventoryReport.showcaseKey,
      ]);
      homeItems.addAll(
        [
          homeShowcaseData.warehouseManagerManageStock.buildWith(
            child: HomeItemCard(
              icon: Icons.store_mall_directory,
              label: i18.home.manageStockLabel,
              onPressed: () {
                context.router.push(ManageStocksRoute());
              },
            ),
          ),
          homeShowcaseData.wareHouseManagerStockReconciliation.buildWith(
            child: HomeItemCard(
              icon: Icons.menu_book,
              label: i18.home.stockReconciliationLabel,
              onPressed: () {
                context.router.push(StockReconciliationRoute());
              },
            ),
          ),
          homeShowcaseData.wareHouseManagerChecklist.buildWith(
            child: HomeItemCard(
              icon: Icons.menu_book,
              label: i18.home.warehouseManagerCheckList,
              onPressed: () => context.router.push(ChecklistWrapperRoute()),
            ),
          ),
          homeShowcaseData.warehouseManagerFileComplaint.buildWith(
            child: HomeItemCard(
              icon: Icons.announcement,
              label: i18.home.fileComplaint,
              onPressed: () =>
                  context.router.push(const ComplaintsInboxWrapperRoute()),
            ),
          ),
          homeShowcaseData.warehouseManagerSyncData.buildWith(
            child: StreamBuilder<Map<String, dynamic>?>(
              stream: FlutterBackgroundService().on('serviceRunning'),
              builder: (context, snapshot) {
                return HomeItemCard(
                  icon: Icons.sync_alt,
                  label: i18.home.syncDataLabel,
                  onPressed: () async {
                    if (snapshot.data?['enablesManualSync'] == true) {
                      _attemptSyncUp(context);
                    } else {
                      DigitToast.show(
                        context,
                        options: DigitToastOptions(
                          localizations
                              .translate(i18.common.coreCommonSyncInProgress),
                          false,
                          Theme.of(context),
                        ),
                      );
                    }
                  },
                );
              },
            ),
          ),
          homeShowcaseData.inventoryReport.buildWith(
            child: HomeItemCard(
              icon: Icons.announcement,
              label: i18.home.viewReportsLabel,
              onPressed: () {
                context.router.push(
                  InventoryReportSelectionRoute(),
                );
              },
            ),
          ),
        ],
      );
    }
    if (isSupervisor) {
      showcaseKeys.addAll([
        homeShowcaseData.supervisorMyChecklist.showcaseKey,
        homeShowcaseData.supervisorComplaints.showcaseKey,
        homeShowcaseData.supervisorSyncData.showcaseKey,
      ]);
      homeItems.addAll([
        homeShowcaseData.supervisorMyChecklist.buildWith(
          child: HomeItemCard(
            icon: Icons.menu_book,
            label: i18.home.myCheckList,
            onPressed: () => context.router.push(ChecklistWrapperRoute()),
          ),
        ),
        homeShowcaseData.supervisorComplaints.buildWith(
          child: HomeItemCard(
            icon: Icons.announcement,
            label: i18.home.fileComplaint,
            onPressed: () =>
                context.router.push(const ComplaintsInboxWrapperRoute()),
          ),
        ),
        homeShowcaseData.supervisorSyncData.buildWith(
          child: StreamBuilder<Map<String, dynamic>?>(
            stream: FlutterBackgroundService().on('serviceRunning'),
            builder: (context, snapshot) {
              return HomeItemCard(
                icon: Icons.sync_alt,
                label: i18.home.syncDataLabel,
                onPressed: () async {
                  if (!snapshot.hasData) {
                    if (context.mounted) {
                      if (snapshot.data?['enablesManualSync'] == true) {
                        _attemptSyncUp(context);
                      } else {
                        DigitToast.show(
                          context,
                          options: DigitToastOptions(
                            localizations
                                .translate(i18.common.coreCommonSyncInProgress),
                            false,
                            Theme.of(context),
                          ),
                        );
                      }
                    }
                  }
                },
              );
            },
          ),
        ),
      ]);
    }

    // homeItems.addAll(
    //   [
    //     HomeItemCard(
    //       icon: Icons.call,
    //       label: i18.home.callbackLabel,
    //     ),
    //     HomeItemCard(
    //       icon: Icons.table_chart,
    //       label: 'DB',
    //       onPressed: () {
    //         Navigator.of(context).push(
    //           MaterialPageRoute(
    //             builder: (context) => DriftDbViewer(
    //               context.read<LocalSqlDataStore>(),
    //             ),
    //           ),
    //         );
    //       },
    //     ),
    //     HomeItemCard(
    //       icon: Icons.delete_forever,
    //       label: 'Delete all',
    //       onPressed: () async {
    //         final sql = context.read<LocalSqlDataStore>();
    //         final isar = context.read<Isar>();
    //         int count = 0;
    //         for (var element in sql.allTables) {
    //           final selector = sql.delete(element)
    //             ..where((_) => const Constant(true));
    //           count += await selector.go();
    //         }
    //         debugPrint('deleted: $count');

    //         await isar.writeTxn(() async => await isar.opLogs.clear());
    //       },
    //     ),
    //   ],
    // );

    return _HomeItemDataModel(homeItems, showcaseKeys);
  }

  void _attemptSyncUp(BuildContext context) {
    context.read<SyncBloc>().add(
          SyncSyncUpEvent(
            userId: context.loggedInUserUuid,
            localRepositories: [
              context.read<
                  LocalRepository<HouseholdModel, HouseholdSearchModel>>(),
              context.read<
                  LocalRepository<IndividualModel, IndividualSearchModel>>(),
              context.read<
                  LocalRepository<ProjectBeneficiaryModel,
                      ProjectBeneficiarySearchModel>>(),
              context.read<
                  LocalRepository<HouseholdMemberModel,
                      HouseholdMemberSearchModel>>(),
              context.read<LocalRepository<TaskModel, TaskSearchModel>>(),
              context.read<LocalRepository<StockModel, StockSearchModel>>(),
              context.read<LocalRepository<ServiceModel, ServiceSearchModel>>(),
              context.read<
                  LocalRepository<StockReconciliationModel,
                      StockReconciliationSearchModel>>(),
              context.read<
                  LocalRepository<PgrServiceModel, PgrServiceSearchModel>>(),
            ],
            remoteRepositories: [
              context.read<
                  RemoteRepository<HouseholdModel, HouseholdSearchModel>>(),
              context.read<
                  RemoteRepository<IndividualModel, IndividualSearchModel>>(),
              context.read<
                  RemoteRepository<ProjectBeneficiaryModel,
                      ProjectBeneficiarySearchModel>>(),
              context.read<
                  RemoteRepository<HouseholdMemberModel,
                      HouseholdMemberSearchModel>>(),
              context.read<RemoteRepository<TaskModel, TaskSearchModel>>(),
              context.read<RemoteRepository<StockModel, StockSearchModel>>(),
              context
                  .read<RemoteRepository<ServiceModel, ServiceSearchModel>>(),
              context.read<
                  RemoteRepository<StockReconciliationModel,
                      StockReconciliationSearchModel>>(),
              context.read<
                  RemoteRepository<PgrServiceModel, PgrServiceSearchModel>>(),
            ],
          ),
        );
  }
}

class _HomeItemDataModel {
  final List<Widget> homeItems;
  final List<GlobalKey> showcaseKeys;

  const _HomeItemDataModel(this.homeItems, this.showcaseKeys);
}
