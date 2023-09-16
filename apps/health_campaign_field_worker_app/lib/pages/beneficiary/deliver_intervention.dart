import 'dart:math';

import 'package:collection/collection.dart';
import 'package:digit_components/digit_components.dart';
import 'package:digit_components/utils/date_utils.dart';
import 'package:digit_components/widgets/atoms/digit_divider.dart';
import 'package:flutter/material.dart';
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
          final initialCount = min(
            (householdMemberWrapper.household.memberCount ??
                    householdMemberWrapper.members.length) /
                1.8,
            3,
          ).round();
          final isDelivered =
              householdMemberWrapper.task?.status == 'delivered';

          return BlocListener<ProductVariantBloc, ProductVariantState>(
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
                                  child: DigitElevatedButton(
                                    onPressed: () async {
                                      form.markAllAsTouched();
                                      setState(() {
                                        hasErrors = form
                                            .control(_quantityDistributedKey)
                                            .hasErrors;
                                      });
                                      if (!form.valid) return;
                                      final router = context.router;
                                      final shouldSubmit =
                                          await DigitDialog.show<bool>(
                                        context,
                                        options: DigitDialogOptions(
                                          titleText: localizations.translate(
                                            i18.deliverIntervention.dialogTitle,
                                          ),
                                          contentText: localizations.translate(
                                            i18.deliverIntervention
                                                .dialogContent,
                                          ),
                                          primaryAction: DigitDialogActions(
                                            label: localizations.translate(
                                              i18.common.coreCommonSubmit,
                                            ),
                                            action: (ctx) {
                                              final clientReferenceId = state
                                                          .householdMemberWrapper
                                                          .task ==
                                                      null
                                                  ? IdGen.i.identifier
                                                  : state.householdMemberWrapper
                                                      .task!.clientReferenceId;
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
                                                            .variables.tenantId,
                                                        rowVersion:
                                                            householdMemberWrapper
                                                                    .task
                                                                    ?.rowVersion ??
                                                                1,
                                                        projectId:
                                                            context.projectId,
                                                        status: Status
                                                            .delivered.name,
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
                                                                    .task?.id,
                                                            clientReferenceId:
                                                                clientReferenceId,
                                                            rowVersion:
                                                                householdMemberWrapper
                                                                        .task
                                                                        ?.resources
                                                                        ?.first
                                                                        .rowVersion ??
                                                                    1,
                                                            isDelivered: true,
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
                                                            deliveryComment:
                                                                form
                                                                    .control(
                                                                      _deliveryCommentKey,
                                                                    )
                                                                    .value,
                                                            auditDetails:
                                                                AuditDetails(
                                                              createdBy: context
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
                                                        address:
                                                            householdMemberWrapper
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
                                                          lastModifiedBy: context
                                                              .loggedInUserUuid,
                                                          lastModifiedTime: context
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
                                          secondaryAction: DigitDialogActions(
                                            label: localizations.translate(
                                              i18.common.coreCommonCancel,
                                            ),
                                            action: (context) => Navigator.of(
                                              context,
                                              rootNavigator: true,
                                            ).pop(false),
                                          ),
                                        ),
                                      );

                                      if (shouldSubmit ?? false) {
                                        final parent =
                                            router.parent() as StackRouter;
                                        parent.popUntilRouteWithName(
                                          SearchBeneficiaryRoute.name,
                                        );
                                        router.push(AcknowledgementRoute());
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
                                      color:
                                          Theme.of(context).colorScheme.surface,
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
                                                  .headOfHousehold.gender?.name
                                                  .toUpperCase() ??
                                              '',
                                        ),
                                        "${localizations.translate(
                                          i18.common.coreCommonMobileNumber,
                                        )}:": householdMemberWrapper
                                                .headOfHousehold.mobileNumber ??
                                            '',
                                      },
                                    ),
                                    deliverInterventionShowcaseData.memberCount
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
                                              () {
                                            count = householdMemberWrapper
                                                    .household.memberCount ??
                                                householdMemberWrapper
                                                    .members.length;

                                            return min(count / 1.8, 3).round();
                                          }(),
                                        },
                                      ),
                                    ),
                                    const DigitDivider(),
                                    deliverInterventionShowcaseData
                                        .numberOfBednetsDistributed
                                        .buildWith(
                                      child: DigitIntegerFormPicker(
                                        form: form,
                                        minimum: 1,
                                        maximum: min(
                                          (householdMemberWrapper
                                                      .household.memberCount ??
                                                  householdMemberWrapper
                                                      .members.length) /
                                              1.8,
                                          3,
                                        ).round(),
                                        formControlName:
                                            _quantityDistributedKey,
                                        label: "${localizations.translate(
                                          i18.deliverIntervention
                                              .quantityDistributedLabel,
                                        )}*",
                                        incrementer: !isDelivered,
                                        onChanged: (formValue) {
                                          final count = min(
                                            (householdMemberWrapper.household
                                                        .memberCount ??
                                                    householdMemberWrapper
                                                        .members.length) /
                                                1.8,
                                            3,
                                          ).round();
                                          if (int.parse(formValue) != count) {
                                            setState(() {
                                              form
                                                  .control(_deliveryCommentKey)
                                                  .setValidators(
                                                [Validators.required],
                                                updateParent: true,
                                                autoValidate: true,
                                              );
                                              form
                                                  .control(_deliveryCommentKey)
                                                  .touched;
                                              readOnly = false;
                                              hasErrors = form
                                                  .control(
                                                    _quantityDistributedKey,
                                                  )
                                                  .hasErrors;
                                            });
                                          } else {
                                            form.markAsPristine();
                                            setState(() {
                                              form
                                                  .control(_deliveryCommentKey)
                                                  .setValidators(
                                                [],
                                                updateParent: true,
                                                autoValidate: true,
                                              );
                                              form
                                                  .control(_deliveryCommentKey)
                                                  .value = null;

                                              readOnly = true;
                                              hasErrors = form
                                                  .control(
                                                    _quantityDistributedKey,
                                                  )
                                                  .hasErrors;
                                            });
                                          }
                                        },
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    ReactiveFormConsumer(
                                      builder: (context, form, child) {
                                        if (hasErrors) {
                                          final error = localizations.translate(
                                            i18.deliverIntervention
                                                .bedNetsNonZero,
                                          );

                                          return Container(
                                            padding: const EdgeInsets.only(
                                              left: kPadding * 2,
                                            ),
                                            alignment: Alignment
                                                .centerLeft, // Align the text to the left
                                            child: Text(
                                              error,
                                              style: const TextStyle(
                                                color: Colors.red,
                                                fontSize: 12,
                                              ),
                                            ),
                                          );
                                        } else {
                                          return Container(); // Empty container if no error
                                        }
                                      },
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
                                          child: DigitReactiveDropdown<String>(
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
                                            menuItems:
                                                deliveryCommentOptions.map((e) {
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
          );
        },
      ),
    );
  }

  FormGroup buildForm(BuildContext context) {
    final state = context.read<HouseholdOverviewBloc>().state;

    return fb.group(<String, Object>{
      _quantityDistributedKey: FormControl<int>(
        value: state.householdMemberWrapper.task?.resources?.first.quantity !=
                null
            ? int.tryParse(
                state.householdMemberWrapper.task!.resources!.first.quantity!,
              )
            : 0,
        validators: [
          CustomValidator.bedNetValidaiton,
        ],
      ),
      _deliveryCommentKey: FormControl<String>(
        value:
            state.householdMemberWrapper.task?.resources?.first.deliveryComment,
        validators: [
          if (min(
                (state.householdMemberWrapper.household.memberCount ??
                        state.householdMemberWrapper.members.length) /
                    1.8,
                3,
              ).round() >
              0)
            Validators.required,
        ],
      ),
    });
  }
}
