import 'package:digit_components/digit_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:recase/recase.dart';

import '../../../blocs/app_initialization/app_initialization.dart';
import '../../../blocs/complaints_registration/complaints_registration.dart';
import '../../../router/app_router.dart';
import '../../../utils/i18_key_constants.dart' as i18;
import '../../../widgets/header/back_navigation_help_header.dart';
import '../../../widgets/localized.dart';
import '../../../widgets/showcase/config/showcase_constants.dart';
import '../../../widgets/showcase/showcase_button.dart';

class ComplaintTypePage extends LocalizedStatefulWidget {
  const ComplaintTypePage({
    super.key,
    super.appLocalizations,
  });

  @override
  State<ComplaintTypePage> createState() => _ComplaintTypePageState();
}

class _ComplaintTypePageState extends LocalizedState<ComplaintTypePage> {
  static const _complaintType = 'complaintType';
  static const _otherComplaintType = 'otherComplaintType';

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ComplaintsRegistrationBloc>();
    final router = context.router;
    final theme = Theme.of(context);

    return Scaffold(
      body: ReactiveFormBuilder(
        form: () {
          return bloc.state.map(
            create: (value) => buildForm(value),
            persisted: (value) {
              throw const InvalidComplaintsRegistrationStateException();
            },
            view: (value) => buildForm(value),
          );
        },
        builder: (context, form, child) => BlocBuilder<
            ComplaintsRegistrationBloc, ComplaintsRegistrationState>(
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
                  child: complaintTypeShowcaseData.complaintTypeNext.buildWith(
                    child: DigitElevatedButton(
                      onPressed: () async {
                        var complaintType = form.control(_complaintType).value;
                        var otherComplaintTypeValue =
                            form.control(_otherComplaintType).value;

                        if (complaintType == "Other") {
                          form.control(_otherComplaintType).setValidators(
                            [Validators.required],
                            autoValidate: true,
                          );
                        } else {
                          form.control(_otherComplaintType).setValidators(
                            [],
                            autoValidate: true,
                          );
                        }

                        setState(() {
                          form.markAllAsTouched();
                        });

                        if (!form.valid) return;

                        state.whenOrNull(
                          create: (
                            loading,
                            complaintType,
                            _,
                            addressModel,
                            complaintsDetailsModel,
                          ) {
                            bloc.add(
                              ComplaintsRegistrationEvent.saveComplaintType(
                                complaintType:
                                    form.control(_complaintType).value,
                                otherComplaintDescription:
                                    otherComplaintTypeValue,
                              ),
                            );
                          },
                        );

                        router.push(ComplaintsDetailsRoute());
                      },
                      child: Center(
                        child: Text(
                          localizations.translate(i18.complaints.actionLabel),
                        ),
                      ),
                    ),
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
                            i18.complaints.complaintsTypeHeading,
                          ),
                          style: theme.textTheme.displayMedium,
                        ),
                        complaintTypeShowcaseData.complaintType.buildWith(
                          child: LabeledField(
                            label: localizations.translate(
                              i18.complaints.complaintsTypeLabel,
                            ),
                            child: BlocBuilder<AppInitializationBloc,
                                AppInitializationState>(
                              builder: (context, state) {
                                return state.maybeWhen(
                                  orElse: () => const Offstage(),
                                  initialized:
                                      (appConfiguration, serviceRegistryList) {
                                    var complaintTypes = appConfiguration
                                        .complaintTypes
                                        ?.map((e) => e.code)
                                        .toList();

                                    final isDisabled =
                                        form.control(_complaintType).disabled;

                                    return RadioGroup<String>.builder(
                                      groupValue:
                                          form.control(_complaintType).value ??
                                              "",
                                      onChanged: (changedValue) {
                                        if (isDisabled) return;

                                        setState(() {
                                          form.control(_complaintType).value =
                                              changedValue;
                                        });
                                      },
                                      textStyle: TextStyle(
                                        color: isDisabled
                                            ? theme.colorScheme.shadow
                                            : theme.colorScheme.onBackground,
                                      ),
                                      items: complaintTypes ?? [],
                                      itemBuilder: (item) => RadioButtonBuilder(
                                        localizations.translate(
                                          item.snakeCase.toUpperCase().trim(),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        if (form.control(_complaintType).value == "Other") ...[
                          DigitTextFormField(
                            formControlName: _otherComplaintType,
                            label: "",
                            maxLength: 100,
                            validationMessages: {
                              'required': (object) => localizations.translate(
                                    i18.complaints.validationRequiredError,
                                  ),
                            },
                          ),
                        ],
                        if (form.touched &&
                            form.control(_complaintType).invalid) ...[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                              ),
                              child: Text(
                                localizations.translate(
                                  i18.complaints.validationRequiredError,
                                ),
                                style: TextStyle(
                                  color: DigitTheme.instance.colors.lavaRed,
                                ),
                              ),
                            ),
                          ),
                        ],
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

  FormGroup buildForm(ComplaintsRegistrationState state) {
    final complaintTypeValue = state.mapOrNull(
      view: (value) => value.complaintType,
    );

    final bool shouldDisableForm =
        complaintTypeValue != null && complaintTypeValue.isNotEmpty;

    return fb.group(<String, Object>{
      _complaintType: FormControl<String>(
        validators: [Validators.required],
        value: complaintTypeValue,
        disabled: shouldDisableForm,
      ),
      _otherComplaintType: FormControl<String>(
        value: complaintTypeValue,
      ),
    });
  }
}
