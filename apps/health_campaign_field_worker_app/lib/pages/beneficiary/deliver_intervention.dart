import 'dart:math';

import 'package:collection/collection.dart';
import 'package:digit_components/digit_components.dart';
import 'package:digit_components/utils/date_utils.dart';
import 'package:digit_components/widgets/atoms/digit_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../blocs/app_initialization/app_initialization.dart';
import '../../blocs/delivery_intervention/deliver_intervention.dart';
import '../../blocs/household_overview/household_overview.dart';
import '../../blocs/product_variant/product_variant.dart';
import '../../data/local_store/no_sql/schema/app_configuration.dart';
import '../../models/data_model.dart';
import '../../router/app_router.dart';
import '../../utils/environment_config.dart';
import '../../utils/i18_key_constants.dart' as i18;
import '../../utils/utils.dart';
import '../../widgets/component_wrapper/product_variant_bloc_wrapper.dart';
import '../../widgets/header/back_navigation_help_header.dart';
import '../../widgets/localized.dart';
import '../../widgets/showcase/config/showcase_constants.dart';
import '../../widgets/showcase/showcase_button.dart';

class DeliverInterventionPage extends LocalizedStatefulWidget {
  final bool isEditing;

  const DeliverInterventionPage({
    super.key,
    super.appLocalizations,
    this.isEditing = false,
  });

  @override
  State<DeliverInterventionPage> createState() =>
      _DeliverInterventionPageState();
}

class _DeliverInterventionPageState
    extends LocalizedState<DeliverInterventionPage> {
  static const _quantityDistributedKey = 'quantityDistributed';
  static const _deliveryCommentKey = 'deliveryComment';
  int count = 0;
  late ProductVariantModel productVariantModel;
  bool readOnly = false;
  bool hasErrors = false;

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ProductVariantBlocWrapper(
      child: BlocBuilder<HouseholdOverviewBloc, HouseholdOverviewState>(
        builder: (context, state) {
          final householdMemberWrapper = state.householdMemberWrapper;
          final calculatedCount = min(
            (householdMemberWrapper.household.memberCount ??
                    householdMemberWrapper.members.length) /
                1.8,
            3,
          ).round();
          RegExp bedNetRegex = RegExp(r'^[1-3]+$');
          if (calculatedCount == 2) {
            bedNetRegex = RegExp(r'^[1-2]+$');
          }
          if (calculatedCount == 1) {
            bedNetRegex = RegExp(r'^[1]+$');
          }
          final isDelivered =
              householdMemberWrapper.task?.status == 'delivered';

          return WillPopScope(
            onWillPop: () => _onBackPressed(context, isDelivered),
            child: BlocListener<ProductVariantBloc, ProductVariantState>(
              listener: (context, productState) {
                productState.maybeWhen(
                  orElse: () => {},
                  fetched: (productVariants) {
                    setState(() {
                      productVariantModel = productVariants[0];
                    });
                  },
                );
              },
              child: Scaffold(
                body: state.loading
                    ? const Center(child: CircularProgressIndicator())
                    : ReactiveFormBuilder(
                        form: () => buildForm(context),
                        builder: (context, form, child) {
                          return ScrollableContent(
                            header: Column(children: [
                              BackNavigationHelpHeaderWidget(
                                showcaseButton: const ShowcaseButton(),
                                showBackNavigation: isDelivered ? true : false,
                              ),
                            ]),
                            footer: isDelivered
                                ? null
                                : DigitCard(
                                    child: SizedBox(
                                      child: Column(
                                        children: [
                                          DigitOutlineIconButton(
                                            onPressed: () {
                                              context.router
                                                  .push(QRScannerRoute(
                                                quantity: int.parse(
                                                  form
                                                      .control(
                                                        _quantityDistributedKey,
                                                      )
                                                      .value,
                                                ),
                                              ));
                                            },
                                            icon: Icons.scanner_outlined,
                                            label: localizations.translate(
                                              i18.deliverIntervention
                                                  .scannerLabel,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: kPadding,
                                            width: kPadding,
                                          ),
                                          DigitElevatedButton(
                                            onPressed: () async {
                                              form.markAllAsTouched();
                                              final List<AdditionalField>
                                                  fields = [];
                                              for (var element in context
                                                  .read<
                                                      DeliverInterventionBloc>()
                                                  .state
                                                  .barcodes!) {
                                                for (var e in element
                                                    .elements.entries) {
                                                  e.value.rawData;
                                                  fields.add(
                                                    AdditionalField(
                                                      e.key.toString(),
                                                      e.value.data.toString(),
                                                    ),
                                                  );
                                                }
                                              }
                                              if (!form.valid) return;
                                              final router = context.router;
                                              final shouldSubmit =
                                                  await DigitDialog.show<bool>(
                                                context,
                                                options: DigitDialogOptions(
                                                  titleText:
                                                      localizations.translate(
                                                    i18.deliverIntervention
                                                        .dialogTitle,
                                                  ),
                                                  contentText:
                                                      localizations.translate(
                                                    i18.deliverIntervention
                                                        .dialogContent,
                                                  ),
                                                  primaryAction:
                                                      DigitDialogActions(
                                                    label:
                                                        localizations.translate(
                                                      i18.common
                                                          .coreCommonSubmit,
                                                    ),
                                                    action: (ctx) {
                                                      final clientReferenceId = state
                                                                  .householdMemberWrapper
                                                                  .task ==
                                                              null
                                                          ? IdGen.i.identifier
                                                          : state
                                                              .householdMemberWrapper
                                                              .task!
                                                              .clientReferenceId;
                                                      context
                                                          .read<
                                                              DeliverInterventionBloc>()
                                                          .add(
                                                            DeliverInterventionSubmitEvent(
                                                              TaskModel(
                                                                id: householdMemberWrapper
                                                                    .task?.id,
                                                                clientReferenceId:
                                                                    clientReferenceId,
                                                                projectBeneficiaryClientReferenceId:
                                                                    householdMemberWrapper
                                                                        .projectBeneficiary
                                                                        .clientReferenceId,
                                                                tenantId: envConfig
                                                                    .variables
                                                                    .tenantId,
                                                                rowVersion:
                                                                    householdMemberWrapper
                                                                            .task
                                                                            ?.rowVersion ??
                                                                        1,
                                                                projectId: context
                                                                    .projectId,
                                                                status: Status
                                                                    .delivered
                                                                    .name,
                                                                createdDate: context
                                                                    .millisecondsSinceEpoch(),
                                                                resources: [
                                                                  TaskResourceModel(
                                                                    id: householdMemberWrapper
                                                                        .task
                                                                        ?.resources
                                                                        ?.first
                                                                        .id,
                                                                    taskId:
                                                                        householdMemberWrapper
                                                                            .task
                                                                            ?.id,
                                                                    clientReferenceId:
                                                                        clientReferenceId,
                                                                    rowVersion: householdMemberWrapper
                                                                            .task
                                                                            ?.resources
                                                                            ?.first
                                                                            .rowVersion ??
                                                                        1,
                                                                    isDelivered:
                                                                        true,
                                                                    tenantId: envConfig
                                                                        .variables
                                                                        .tenantId,
                                                                    quantity: form
                                                                        .control(
                                                                          _quantityDistributedKey,
                                                                        )
                                                                        .value
                                                                        .toString(),
                                                                    productVariantId:
                                                                        productVariantModel
                                                                            .id,
                                                                    deliveryComment: form
                                                                        .control(
                                                                          _deliveryCommentKey,
                                                                        )
                                                                        .value,
                                                                    auditDetails:
                                                                        AuditDetails(
                                                                      createdBy:
                                                                          context
                                                                              .loggedInUserUuid,
                                                                      createdTime: householdMemberWrapper
                                                                              .task
                                                                              ?.resources
                                                                              ?.first
                                                                              .auditDetails
                                                                              ?.createdTime ??
                                                                          context
                                                                              .millisecondsSinceEpoch(),
                                                                      lastModifiedBy:
                                                                          context
                                                                              .loggedInUserUuid,
                                                                      lastModifiedTime:
                                                                          context
                                                                              .millisecondsSinceEpoch(),
                                                                    ),
                                                                  ),
                                                                ],
                                                                address: householdMemberWrapper
                                                                    .household
                                                                    .address
                                                                    ?.copyWith(
                                                                  relatedClientReferenceId:
                                                                      clientReferenceId,
                                                                  id: state
                                                                      .householdMemberWrapper
                                                                      .task
                                                                      ?.address
                                                                      ?.id,
                                                                ),
                                                                additionalFields:
                                                                    TaskAdditionalFields(
                                                                  version: 1,
                                                                  fields:
                                                                      fields,
                                                                ),
                                                                clientAuditDetails: householdMemberWrapper
                                                                            .task
                                                                            ?.clientAuditDetails ==
                                                                        null
                                                                    ? ClientAuditDetails(
                                                                        createdBy:
                                                                            context.loggedInUserUuid,
                                                                        createdTime:
                                                                            context.millisecondsSinceEpoch(),
                                                                        lastModifiedBy:
                                                                            context.loggedInUserUuid,
                                                                        lastModifiedTime:
                                                                            context.millisecondsSinceEpoch(),
                                                                      )
                                                                    : ClientAuditDetails(
                                                                        createdBy:
                                                                            context.loggedInUserUuid,
                                                                        createdTime: householdMemberWrapper
                                                                            .task!
                                                                            .clientAuditDetails!
                                                                            .createdTime,
                                                                        lastModifiedBy:
                                                                            context.loggedInUserUuid,
                                                                        lastModifiedTime:
                                                                            context.millisecondsSinceEpoch(),
                                                                      ),
                                                                auditDetails:
                                                                    AuditDetails(
                                                                  createdBy: context
                                                                      .loggedInUserUuid,
                                                                  createdTime: householdMemberWrapper
                                                                          .task
                                                                          ?.address
                                                                          ?.auditDetails
                                                                          ?.createdTime ??
                                                                      context
                                                                          .millisecondsSinceEpoch(),
                                                                  lastModifiedBy:
                                                                      context
                                                                          .loggedInUserUuid,
                                                                  lastModifiedTime:
                                                                      context
                                                                          .millisecondsSinceEpoch(),
                                                                ),
                                                              ),
                                                              state.householdMemberWrapper
                                                                          .task ==
                                                                      null
                                                                  ? false
                                                                  : true,
                                                              context.boundary,
                                                            ),
                                                          );

                                                      Navigator.of(
                                                        context,
                                                        rootNavigator: true,
                                                      ).pop(true);
                                                    },
                                                  ),
                                                  secondaryAction:
                                                      DigitDialogActions(
                                                    label:
                                                        localizations.translate(
                                                      i18.common
                                                          .coreCommonCancel,
                                                    ),
                                                    action: (context) =>
                                                        Navigator.of(
                                                      context,
                                                      rootNavigator: true,
                                                    ).pop(false),
                                                  ),
                                                ),
                                              );

                                              if (shouldSubmit ?? false) {
                                                final parent = router.parent()
                                                    as StackRouter;
                                                parent.popUntilRouteWithName(
                                                  SearchBeneficiaryRoute.name,
                                                );
                                                router.push(
                                                  AcknowledgementRoute(),
                                                );
                                              }
                                            },
                                            child: Center(
                                              child: Text(
                                                localizations.translate(
                                                  i18.common.coreCommonSubmit,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                            slivers: [
                              SliverToBoxAdapter(
                                child: DigitCard(
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              localizations.translate(
                                                i18.deliverIntervention
                                                    .deliverInterventionLabel,
                                              ),
                                              style:
                                                  theme.textTheme.displayMedium,
                                            ),
                                          ),
                                        ],
                                      ),
                                      DigitTableCard(
                                        element: {
                                          localizations.translate(i18
                                              .deliverIntervention
                                              .dateOfRegistrationLabel): () {
                                            final date = householdMemberWrapper
                                                .projectBeneficiary
                                                .dateOfRegistration;

                                            final registrationDate = DateTime
                                                .fromMillisecondsSinceEpoch(
                                              date,
                                            );

                                            return DateFormat('dd MMMM yyyy')
                                                .format(registrationDate);
                                          }(),
                                        },
                                      ),
                                      DigitTableCard(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .surface,
                                        border: Border.all(
                                          color: Colors.grey,
                                          style: BorderStyle.solid,
                                          width: 1.0,
                                        ),
                                        padding: const EdgeInsets.only(
                                          left: 8,
                                          right: 8,
                                          bottom: 16,
                                        ),
                                        element: {
                                          "${localizations.translate(i18.householdOverView.householdOverViewHouseholdHeadLabel)}:":
                                              '${householdMemberWrapper.headOfHousehold.name?.givenName ?? ''} ${householdMemberWrapper.headOfHousehold.name?.familyName ?? ''}',
                                          "${localizations.translate(
                                            i18.common.coreCommonAge,
                                          )}:": () {
                                            final dob = householdMemberWrapper
                                                .headOfHousehold.dateOfBirth;
                                            if (dob == null || dob.isEmpty) {
                                              return '';
                                            }

                                            final int years =
                                                DigitDateUtils.calculateAge(
                                              DigitDateUtils
                                                      .getFormattedDateToDateTime(
                                                    dob,
                                                  ) ??
                                                  DateTime.now(),
                                            ).years;

                                            return years.toString();
                                          }(),
                                          "${localizations.translate(
                                            i18.common.coreCommonGender,
                                          )}:": localizations.translate(
                                            householdMemberWrapper
                                                    .headOfHousehold
                                                    .gender
                                                    ?.name
                                                    .toUpperCase() ??
                                                '',
                                          ),
                                          "${localizations.translate(
                                            i18.common.coreCommonMobileNumber,
                                          )}:": householdMemberWrapper
                                                  .headOfHousehold
                                                  .mobileNumber ??
                                              '',
                                        },
                                      ),
                                      deliverInterventionShowcaseData
                                          .memberCount
                                          .buildWith(
                                        child: DigitTableCard(
                                          element: {
                                            "${localizations.translate(
                                              i18.deliverIntervention
                                                  .memberCountText,
                                            )}:": householdMemberWrapper
                                                    .household.memberCount ??
                                                householdMemberWrapper
                                                    .members.length,
                                          },
                                        ),
                                      ),
                                      const DigitDivider(),
                                      deliverInterventionShowcaseData
                                          .numberOfBednetsToDeliver
                                          .buildWith(
                                        child: DigitTableCard(
                                          element: {
                                            "${localizations.translate(i18.deliverIntervention.noOfResourcesForDelivery)}:":
                                                calculatedCount,
                                          },
                                        ),
                                      ),
                                      const DigitDivider(),
                                      deliverInterventionShowcaseData
                                          .numberOfBednetsDistributed
                                          .buildWith(
                                        child: DigitTextFormField(
                                          readOnly: isDelivered,
                                          formControlName:
                                              _quantityDistributedKey,
                                          keyboardType: const TextInputType
                                              .numberWithOptions(decimal: true),
                                          inputFormatters: [
                                            LengthLimitingTextInputFormatter(1),
                                            FilteringTextInputFormatter.allow(
                                              bedNetRegex,
                                            ),
                                          ],
                                          label: "${localizations.translate(
                                            i18.deliverIntervention
                                                .quantityDistributedLabel,
                                          )}*",
                                          onChanged: (formValue) {
                                            final bloc = context.read<
                                                DeliverInterventionBloc>();
                                            bloc.add(
                                              const DeliverInterventionEvent
                                                  .handleScanner([]),
                                            );
                                            if (formValue.value == null ||
                                                formValue.value
                                                    .toString()
                                                    .trim()
                                                    .isEmpty) {
                                              return;
                                            }
                                            if (int.parse(
                                                  formValue.value.toString(),
                                                ) !=
                                                calculatedCount) {
                                              setState(() {
                                                form
                                                    .control(
                                                  _deliveryCommentKey,
                                                )
                                                    .setValidators(
                                                  [Validators.required],
                                                  updateParent: true,
                                                  autoValidate: true,
                                                );
                                                form
                                                    .control(
                                                      _deliveryCommentKey,
                                                    )
                                                    .touched;
                                                readOnly = false;
                                              });
                                            } else {
                                              form.markAsPristine();
                                              setState(() {
                                                form
                                                    .control(
                                                  _deliveryCommentKey,
                                                )
                                                    .setValidators(
                                                  [],
                                                  updateParent: true,
                                                  autoValidate: true,
                                                );
                                                form
                                                    .control(
                                                      _deliveryCommentKey,
                                                    )
                                                    .value = null;

                                                readOnly = true;
                                              });
                                            }
                                          },
                                          validationMessages: {
                                            "required": (control) {
                                              return localizations.translate(
                                                i18.deliverIntervention
                                                    .bedNetsCountRequired,
                                              );
                                            },
                                          },
                                        ),
                                      ),
                                      BlocBuilder<AppInitializationBloc,
                                          AppInitializationState>(
                                        builder: (context, state) {
                                          if (state is! AppInitialized) {
                                            return const Offstage();
                                          }

                                          final deliveryCommentOptions = state
                                                  .appConfiguration
                                                  .deliveryCommentOptions ??
                                              <DeliveryCommentOptions>[];

                                          return deliverInterventionShowcaseData
                                              .deliveryComment
                                              .buildWith(
                                            child:
                                                DigitReactiveDropdown<String>(
                                              label: localizations.translate(
                                                i18.deliverIntervention
                                                    .deliveryCommentLabel,
                                              ),
                                              readOnly: isDelivered || readOnly,
                                              valueMapper: (value) => value,
                                              initialValue:
                                                  localizations.translate(
                                                deliveryCommentOptions
                                                        .firstOrNull?.code ??
                                                    '',
                                              ),
                                              menuItems: deliveryCommentOptions
                                                  .map((e) {
                                                return localizations
                                                    .translate(e.code);
                                              }).toList(),
                                              validationMessages: {
                                                'required': (object) =>
                                                    localizations.translate(i18
                                                        .deliverIntervention
                                                        .deliveryCommentRequired),
                                              },
                                              formControlName:
                                                  _deliveryCommentKey,
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<bool> _onBackPressed(BuildContext context, bool isDelivered) async {
    if (isDelivered) {
      return true;
    }
    bool? shouldNavigateBack = await showDialog<bool>(
      context: context,
      builder: (context) => DigitDialog(
        options: DigitDialogOptions(
          titleText: localizations.translate(
            i18.deliverIntervention.deliveryAlertTitle,
          ),
          content: Text(localizations.translate(
            i18.deliverIntervention.deliveryAlertContent,
          )),
          primaryAction: DigitDialogActions(
            label: localizations
                .translate(i18.deliverIntervention.deliveryAlertActionLabel),
            action: (ctx) {
              Navigator.of(
                context,
                rootNavigator: true,
              ).pop(false);
            },
          ),
        ),
      ),
    );

    return shouldNavigateBack ?? false;
  }

  FormGroup buildForm(BuildContext context) {
    final state = context.read<HouseholdOverviewBloc>().state;

    return fb.group(<String, Object>{
      _quantityDistributedKey: FormControl<String>(
        value:
            state.householdMemberWrapper.task?.resources?.first.quantity != null
                ? state.householdMemberWrapper.task!.resources!.first.quantity!
                : null,
        validators: [
          Validators.required,
          // CustomValidator.bedNetValidaiton,
        ],
      ),
      _deliveryCommentKey: FormControl<String>(
        value:
            state.householdMemberWrapper.task?.resources?.first.deliveryComment,
        validators: [
          Validators.required,
        ],
      ),
    });
  }
}
