import 'package:collection/collection.dart';
import 'package:digit_components/digit_components.dart';
import 'package:digit_components/widgets/atoms/digit_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../utils/validations.dart' as validation;
import '../../blocs/app_initialization/app_initialization.dart';
import '../../blocs/beneficiary_registration/beneficiary_registration.dart';
import '../../blocs/search_households/search_households.dart';
import '../../data/local_store/no_sql/schema/app_configuration.dart';
import '../../models/data_model.dart';
import '../../router/app_router.dart';
import '../../utils/environment_config.dart';
import '../../utils/i18_key_constants.dart' as i18;
import '../../utils/utils.dart';
import '../../widgets/digit_dob_picker.dart';
import '../../widgets/header/back_navigation_help_header.dart';
import '../../widgets/localized.dart';
import '../../widgets/showcase/config/showcase_constants.dart';
import '../../widgets/showcase/showcase_button.dart';

class IndividualDetailsPage extends LocalizedStatefulWidget {
  final bool isHeadOfHousehold;

  const IndividualDetailsPage({
    super.key,
    super.appLocalizations,
    this.isHeadOfHousehold = false,
  });

  @override
  State<IndividualDetailsPage> createState() => _IndividualDetailsPageState();
}

class _IndividualDetailsPageState
    extends LocalizedState<IndividualDetailsPage> {
  static const _individualNameKey = 'individualName';
  static const _individualLastNameKey = 'individualLastName';

  static const _dobKey = 'dob';
  static const _genderKey = 'gender';
  static const _mobileNumberKey = 'mobileNumber';
  final clickedStatus = ValueNotifier<bool>(false);

  @override
  void dispose() {
    clickedStatus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<BeneficiaryRegistrationBloc>();
    final router = context.router;
    final theme = Theme.of(context);

    return Scaffold(
      body: ReactiveFormBuilder(
        form: () => buildForm(bloc.state),
        builder: (context, form, child) => BlocConsumer<
            BeneficiaryRegistrationBloc, BeneficiaryRegistrationState>(
          listener: (context, state) {
            state.mapOrNull(
              persisted: (value) {
                final householdMemberWrapper = value.householdMemberWrapper;
                if (householdMemberWrapper != null) {
                  context.read<SearchHouseholdsBloc>().add(
                        SearchHouseholdsSetBeneficiaryWrapperEvent(
                          householdMemberWrapper: householdMemberWrapper,
                        ),
                      );
                }
                (router.parent() as StackRouter).pop();
              },
            );
          },
          builder: (context, state) {
            return ScrollableContent(
              header: const Column(children: [
                BackNavigationHelpHeaderWidget(
                  showcaseButton: ShowcaseButton(),
                ),
              ]),
              footer: SizedBox(
                height: 85,
                child: DigitCard(
                  margin: const EdgeInsets.only(left: 0, right: 0, top: 10),
                  child: ValueListenableBuilder(
                    valueListenable: clickedStatus,
                    builder: (context, bool isClicked, _) {
                      return DigitElevatedButton(
                        onPressed: isClicked
                            ? null
                            : () async {
                                final userId = context.loggedInUserUuid;
                                final projectId = context.projectId;
                                form.markAllAsTouched();
                                if (!form.valid)
                                  return;
                                else {
                                  clickedStatus.value = true;
                                  FocusManager.instance.primaryFocus?.unfocus();
                                  state.maybeWhen(
                                    orElse: () {
                                      return;
                                    },
                                    create: (
                                      addressModel,
                                      householdModel,
                                      individualModel,
                                      registrationDate,
                                      searchQuery,
                                      loading,
                                      isHeadOfHousehold,
                                    ) {
                                      final individual = _getIndividualModel(
                                        context,
                                        form: form,
                                        oldIndividual: null,
                                      );

                                      bloc.add(
                                        BeneficiaryRegistrationSaveIndividualDetailsEvent(
                                          model: individual,
                                          isHeadOfHousehold:
                                              widget.isHeadOfHousehold,
                                        ),
                                      );
                                      bloc.add(
                                        BeneficiaryRegistrationCreateEvent(
                                          projectId: projectId,
                                          userUuid: userId,
                                          boundary: context.boundary,
                                        ),
                                      );
                                    },
                                    editIndividual: (
                                      householdModel,
                                      individualModel,
                                      addressModel,
                                      householdMemberWrapper,
                                      loading,
                                    ) {
                                      final individual = _getIndividualModel(
                                        context,
                                        form: form,
                                        oldIndividual: individualModel,
                                      );

                                      bloc.add(
                                        BeneficiaryRegistrationUpdateIndividualDetailsEvent(
                                          addressModel: addressModel,
                                          model: individual,
                                        ),
                                      );
                                    },
                                    addMember: (
                                      addressModel,
                                      householdModel,
                                      loading,
                                    ) {
                                      final individual = _getIndividualModel(
                                        context,
                                        form: form,
                                      );

                                      bloc.add(
                                        BeneficiaryRegistrationAddMemberEvent(
                                          householdModel: householdModel,
                                          individualModel: individual,
                                          addressModel: addressModel,
                                          userUuid: userId,
                                        ),
                                      );
                                      context.router.pop();
                                    },
                                  );
                                }
                              },
                        child: Center(
                          child: Text(
                            state.mapOrNull(
                                  editIndividual: (value) => localizations
                                      .translate(i18.common.coreCommonProceed),
                                ) ??
                                localizations.translate(
                                    i18.householdLocation.actionLabel,),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              slivers: [
                SliverToBoxAdapter(
                  child: DigitCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          localizations.translate(
                            i18.individualDetails.individualsDetailsLabelText,
                          ),
                          style: theme.textTheme.displayMedium,
                        ),
                        Column(
                          children: [
                            individualDetailsShowcaseData.firstNameOfIndividual
                                .buildWith(
                              child: DigitTextFormField(
                                formControlName: _individualNameKey,
                                label: localizations.translate(
                                  i18.individualDetails.firstNameLabelText,
                                ),
                                maxLength: 200,
                                isRequired: true,
                                validationMessages: {
                                  'required': (object) =>
                                      localizations.translate(
                                        i18.individualDetails
                                            .firstNameIsRequiredError,
                                      ),
                                  'minLength': (object) =>
                                      localizations.translate(
                                        i18.individualDetails
                                            .firstNameLengthError,
                                      ),
                                  'maxLength': (object) =>
                                      localizations.translate(
                                        i18.individualDetails
                                            .firstNameLengthError,
                                      ),
                                },
                              ),
                            ),
                            individualDetailsShowcaseData.lastNameOfIndividual
                                .buildWith(
                              child: DigitTextFormField(
                                formControlName: _individualLastNameKey,
                                label: localizations.translate(
                                  i18.individualDetails.lastNameLabelText,
                                ),
                                maxLength: 200,
                                isRequired: true,
                                validationMessages: {
                                  'required': (object) =>
                                      localizations.translate(
                                        i18.individualDetails
                                            .lastNameIsRequiredError,
                                      ),
                                  'minLength': (object) =>
                                      localizations.translate(
                                        i18.individualDetails
                                            .lastNameLengthError,
                                      ),
                                  'maxLength': (object) =>
                                      localizations.translate(
                                        i18.individualDetails
                                            .lastNameLengthError,
                                      ),
                                },
                              ),
                            ),
                            Offstage(
                              offstage: !widget.isHeadOfHousehold,
                              child: individualDetailsShowcaseData
                                  .headOfHousehold
                                  .buildWith(
                                child: DigitCheckbox(
                                  label: localizations.translate(
                                    i18.individualDetails.checkboxLabelText,
                                  ),
                                  value: widget.isHeadOfHousehold,
                                ),
                              ),
                            ),
                            DigitDobPicker(
                              datePickerFormControl: _dobKey,
                              datePickerLabel: '${localizations.translate(
                                i18.individualDetails.dobLabelText,
                              )}*',
                              ageFieldLabel: '${localizations.translate(
                                i18.individualDetails.ageLabelText,
                              )}*',
                              separatorLabel: localizations.translate(
                                i18.individualDetails.separatorLabelText,
                              ),
                            ),
                            BlocBuilder<AppInitializationBloc,
                                AppInitializationState>(
                              builder: (context, state) => state.maybeWhen(
                                orElse: () => const Offstage(),
                                initialized: (appConfiguration, _) {
                                  final genderOptions =
                                      appConfiguration.genderOptions ??
                                          <GenderOptions>[];

                                  return individualDetailsShowcaseData.gender
                                      .buildWith(
                                    child: DigitReactiveDropdown<String>(
                                      label: localizations.translate(
                                        i18.individualDetails.genderLabelText,
                                      ),
                                      isRequired: true,
                                      valueMapper: (value) =>
                                          localizations.translate(
                                        value,
                                      ),
                                      initialValue:
                                          genderOptions.firstOrNull?.name,
                                      menuItems: genderOptions.map(
                                        (e) {
                                          return e.code;
                                        },
                                      ).toList(),
                                      formControlName: _genderKey,
                                      validationMessages: {
                                        'required': (object) =>
                                            localizations.translate(
                                              i18.common.corecommonRequired,
                                            ),
                                      },
                                    ),
                                  );
                                },
                              ),
                            ),
                            individualDetailsShowcaseData.mobile.buildWith(
                              child: DigitTextFormField(
                                keyboardType: TextInputType.number,
                                formControlName: _mobileNumberKey,
                                label: localizations.translate(
                                  i18.individualDetails.mobileNumberLabelText,
                                ),
                                maxLength: 9,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                    RegExp("[0-9]"),
                                  ),
                                ],
                                validationMessages: {
                                  'mobileNumber': (object) =>
                                      localizations.translate(i18
                                          .individualDetails
                                          .mobileNumberInvalidFormatValidationMessage),
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
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
  }

  IndividualModel _getIndividualModel(
    BuildContext context, {
    required FormGroup form,
    IndividualModel? oldIndividual,
  }) {
    final dob = form.control(_dobKey).value as DateTime?;
    String? dobString;
    if (dob != null) {
      dobString = DateFormat('dd/MM/yyyy').format(dob);
    }

    var individual = oldIndividual;
    individual ??= IndividualModel(
      clientReferenceId: IdGen.i.identifier,
      tenantId: envConfig.variables.tenantId,
      rowVersion: 1,
      auditDetails: AuditDetails(
        createdBy: context.loggedInUserUuid,
        createdTime: context.millisecondsSinceEpoch(),
      ),
    );

    var name = individual.name;
    name ??= NameModel(
      individualClientReferenceId: individual.clientReferenceId,
      tenantId: envConfig.variables.tenantId,
      rowVersion: 1,
      auditDetails: AuditDetails(
        createdBy: context.loggedInUserUuid,
        createdTime: context.millisecondsSinceEpoch(),
      ),
    );

    var identifier = (individual.identifiers?.isNotEmpty ?? false)
        ? individual.identifiers!.first
        : null;

    identifier ??= IdentifierModel(
      clientReferenceId: individual.clientReferenceId,
      tenantId: envConfig.variables.tenantId,
      rowVersion: 1,
      auditDetails: AuditDetails(
        createdBy: context.loggedInUserUuid,
        createdTime: context.millisecondsSinceEpoch(),
      ),
    );

    individual = individual.copyWith(
      name: name.copyWith(
        givenName: (form.control(_individualNameKey).value as String).trim(),
        familyName:
            (form.control(_individualLastNameKey).value as String).trim(),
      ),
      gender: form.control(_genderKey).value == null
          ? null
          : Gender.values
              .byName(form.control(_genderKey).value.toString().toLowerCase()),
      mobileNumber: form.control(_mobileNumberKey).value,
      dateOfBirth: dobString,
      identifiers: [
        identifier.copyWith(
          identifierId: 'DEFAULT',
          identifierType: 'DEFAULT',
        ),
      ],
    );

    return individual;
  }

  FormGroup buildForm(BeneficiaryRegistrationState state) {
    final individual = state.mapOrNull<IndividualModel>(
      editIndividual: (value) {
        return value.individualModel;
      },
    );

    final searchQuery = state.mapOrNull<String>(
      create: (value) {
        return value.searchQuery;
      },
    );

    return fb.group(<String, Object>{
      _individualNameKey: FormControl<String>(
        validators: [
          Validators.required,
          Validators.minLength(validation.individual.nameMinLength),
          Validators.maxLength(validation.individual.nameMaxLength),
        ],
        value: individual?.name?.givenName ?? searchQuery?.trim(),
      ),
      _individualLastNameKey: FormControl<String>(
        validators: [
          Validators.required,
          Validators.minLength(validation.individual.nameMinLength),
          Validators.maxLength(validation.individual.nameMaxLength),
        ],
        value: individual?.name?.familyName ?? '',
      ),
      _dobKey: FormControl<DateTime>(
        validators: [
          CustomValidator.dobRequired,
        ],
        value: individual?.dateOfBirth != null
            ? DateFormat('dd/MM/yyyy').parse(
                individual!.dateOfBirth!,
              )
            : null,
      ),
      _genderKey: FormControl<String>(
        validators: [
          Validators.required,
        ],
        value: context.read<AppInitializationBloc>().state.maybeWhen(
              orElse: () => null,
              initialized: (appConfiguration, serviceRegistryList) {
                final options =
                    appConfiguration.genderOptions ?? <GenderOptions>[];

                return options.map((e) => e.code).firstWhereOrNull(
                      (element) =>
                          element.toLowerCase() == individual?.gender?.name,
                    );
              },
            ),
      ),
      _mobileNumberKey: FormControl<String>(
        value: individual?.mobileNumber,
        validators: [CustomValidator.validMobileNumber],
      ),
    });
  }
}
