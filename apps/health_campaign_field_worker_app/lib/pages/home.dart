import 'package:digit_components/digit_components.dart';
import 'package:digit_components/widgets/digit_sync_dialog.dart';
import 'package:drift/drift.dart' hide Column;
import 'package:drift_db_viewer/drift_db_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';

import '../blocs/auth/auth.dart';
import '../blocs/search_households/search_households.dart';
import '../blocs/sync/sync.dart';
import '../data/data_repository.dart';
import '../data/local_store/no_sql/schema/oplog.dart';
import '../data/local_store/sql_store/sql_store.dart';
import '../models/auth/auth_model.dart';
import '../models/data_model.dart';
import '../router/app_router.dart';
import '../utils/i18_key_constants.dart' as i18;
import '../utils/utils.dart';
import '../widgets/header/back_navigation_help_header.dart';
import '../widgets/home/home_item_card.dart';
import '../widgets/localized.dart';
import '../widgets/progress_indicator/progress_indicator.dart';

class HomePage extends LocalizedStatefulWidget {
  const HomePage({
    super.key,
    super.appLocalizations,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends LocalizedState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: ScrollableContent(
        slivers: [
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) => _getItems(context).elementAt(index),
              childCount: _getItems(context).length,
            ),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 145,
              childAspectRatio: 104 / 128,
            ),
          ),
        ],
        header: Column(
          children: [
            const BackNavigationHelpHeaderWidget(
              showBackNavigation: false,
            ),
            Visibility(
              visible: true,
              child: ProgressIndicatorContainer(
                label: localizations.translate(
                  i18.home.progressIndicatorTitle,
                ),
                prefixLabel: localizations.translate(
                  i18.home.progressIndicatorPrefixLabel,
                ),
                suffixLabel: '200',
                value: .08,
              ),
            ),
          ],
        ),
        footer: const PoweredByDigit(),
        children: [
          const SizedBox(height: kPadding * 2),
          BlocConsumer<SyncBloc, SyncState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () => null,
                syncInProgress: () => DigitSyncDialogContent.show(
                  context,
                  type: DigitSyncDialogType.inProgress,
                  // TODO: Localization pending
                  label: 'Sincronização em curso', barrierDismissible: false,
                ),
                completedSync: () {
                  Navigator.of(context, rootNavigator: true).pop();

                  DigitSyncDialogContent.show(
                    context,
                    type: DigitSyncDialogType.complete,
                    // TODO: Localization Pending
                    label: 'Sincronização de dados',
                    primaryAction: DigitDialogActions(
                      // TODO: Localization Pending
                      label: 'Fechar',
                      action: (ctx) {
                        Navigator.pop(ctx);
                      },
                    ),
                  );
                },
                failedSync: () {
                  Navigator.of(context, rootNavigator: true).pop();

                  DigitSyncDialogContent.show(
                    context,
                    type: DigitSyncDialogType.failed,
                    // TODO: Localization Pending
                    label: 'Sincronização falhada!',
                    primaryAction: DigitDialogActions(
                      // TODO: Localization Pending
                      label: 'Tentativa',
                      action: (ctx) {
                        Navigator.pop(ctx);
                        _attemptSyncUp(context);
                      },
                    ),
                    secondaryAction: DigitDialogActions(
                      // TODO: Localization Pending
                      label: 'Fechar',
                      action: (ctx) => Navigator.pop(ctx),
                    ),
                  );
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const Offstage(),
                pendingSync: (count) => count == 0
                    ? const Offstage()
                    : DigitInfoCard(
                        icon: Icons.info,
                        backgroundColor: theme.colorScheme.tertiaryContainer,
                        iconColor: theme.colorScheme.surfaceTint,
                        description: localizations
                            .translate(i18.home.dataSyncInfoContent)
                            .replaceAll('{}', count.toString()),
                        title: localizations.translate(
                          i18.home.dataSyncInfoLabel,
                        ),
                      ),
              );
            },
          ),
        ],
      ),
    );
  }

  List<HomeItemCard> _getItems(BuildContext context) {
    final state = context.read<AuthBloc>().state;
    if (state is! AuthAuthenticatedState) {
      return [];
    }

    final roles = state.userModel.roles.map((e) {
      return e.code;
    });

    final homeItems = <HomeItemCard>[];

    for (final roleModel in roles) {
      switch (roleModel) {
        case UserRoleCodeEnum.registrar:
          homeItems.add(
            HomeItemCard(
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
          );
          break;
        case UserRoleCodeEnum.warehouseManager:
          homeItems.addAll(
            [
              HomeItemCard(
                icon: Icons.store_mall_directory,
                label: i18.home.manageStockLabel,
                onPressed: () {
                  context.router.push(ManageStocksRoute());
                },
              ),
              HomeItemCard(
                icon: Icons.menu_book,
                label: i18.home.stockReconciliationLabel,
                onPressed: () {
                  context.router.push(StockReconciliationRoute());
                },
              ),
            ],
          );
          break;

        case UserRoleCodeEnum.districtSupervisor:
          homeItems.addAll([
            HomeItemCard(
              icon: Icons.menu_book,
              label: i18.home.myCheckList,
              onPressed: () => context.router.push(ChecklistWrapperRoute()),
            ),
          ]);
          break;

        case UserRoleCodeEnum.nationalSupervisor:
          homeItems.addAll([
            HomeItemCard(
              icon: Icons.menu_book,
              label: i18.home.myCheckList,
              onPressed: () => context.router.push(ChecklistWrapperRoute()),
            ),
          ]);
          break;

        case UserRoleCodeEnum.fieldSupervisor:
          homeItems.addAll([
            HomeItemCard(
              icon: Icons.menu_book,
              label: i18.home.myCheckList,
              onPressed: () => context.router.push(ChecklistWrapperRoute()),
            ),
          ]);
          break;
        case UserRoleCodeEnum.provincialSupervisor:
          homeItems.addAll([
            HomeItemCard(
              icon: Icons.menu_book,
              label: i18.home.myCheckList,
              onPressed: () => context.router.push(ChecklistWrapperRoute()),
            ),
          ]);
          break;

        case UserRoleCodeEnum.distributor:
          homeItems.addAll([
            HomeItemCard(
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
          ]);
          break;
        case UserRoleCodeEnum.systemAdministrator:
          homeItems.addAll(
            [
              HomeItemCard(
                icon: Icons.store_mall_directory,
                label: i18.home.manageStockLabel,
              ),
              HomeItemCard(
                icon: Icons.menu_book,
                label: i18.home.stockReconciliationLabel,
              ),
              HomeItemCard(
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
            ],
          );
          break;
        case UserRoleCodeEnum.supervisor:
          // TODO: Handle this case.
          HomeItemCard(
            icon: Icons.menu_book,
            label: i18.home.myCheckList,
            onPressed: () => context.router.push(ChecklistWrapperRoute()),
          );
          break;
      }
    }

    homeItems.addAll(
      [
        HomeItemCard(
          icon: Icons.announcement,
          label: i18.home.fileComplaint,
        ),
        HomeItemCard(
          icon: Icons.sync_alt,
          label: i18.home.syncDataLabel,
          onPressed: () => _attemptSyncUp(context),
        ),
        // HomeItemCard(
        //   icon: Icons.call,
        //   label: i18.home.callbackLabel,
        // ),
        // HomeItemCard(
        //   icon: Icons.table_chart,
        //   label: 'DB',
        //   onPressed: () {
        //     Navigator.of(context).push(
        //       MaterialPageRoute(
        //         builder: (context) => DriftDbViewer(
        //           context.read<LocalSqlDataStore>(),
        //         ),
        //       ),
        //     );
        //   },
        // ),
        // HomeItemCard(
        //   icon: Icons.delete_forever,
        //   label: 'Delete all',
        //   onPressed: () async {
        //     final sql = context.read<LocalSqlDataStore>();
        //     final isar = context.read<Isar>();
        //     int count = 0;
        //     for (var element in sql.allTables) {
        //       final selector = sql.delete(element)
        //         ..where((_) => const Constant(true));
        //       count += await selector.go();
        //     }
        //     debugPrint('deleted: $count');
        //
        //     await isar.writeTxn(() async => await isar.opLogs.clear());
        //   },
        // ),
      ],
    );

    return homeItems;
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
            ],
          ),
        );
  }
}
