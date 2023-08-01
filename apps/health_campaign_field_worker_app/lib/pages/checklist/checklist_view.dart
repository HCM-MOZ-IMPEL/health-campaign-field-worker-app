import 'dart:math';

import 'package:digit_components/digit_components.dart';
import 'package:digit_components/widgets/atoms/digit_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:intl/intl.dart';

import '../../blocs/service/service.dart';
import '../../blocs/service_definition/service_definition.dart';
import '../../models/data_model.dart';
import '../../router/app_router.dart';
import '../../utils/i18_key_constants.dart' as i18;
import '../../utils/utils.dart';
import '../../widgets/header/back_navigation_help_header.dart';
import '../../widgets/localized.dart';

class ChecklistViewPage extends LocalizedStatefulWidget {
  const ChecklistViewPage({
    Key? key,
    super.appLocalizations,
  }) : super(key: key);

  @override
  State<ChecklistViewPage> createState() => _ChecklistViewPageState();
}

class _ChecklistViewPageState extends LocalizedState<ChecklistViewPage> {
  String isStateChanged = '';

  @override
  void initState() {
    context.read<ServiceBloc>().add(
          ServiceChecklistEvent(
            value: Random().nextInt(100).toString(),
            submitTriggered: true,
          ),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    GlobalKey<FormState> abcKey = GlobalKey<FormState>();

    return WillPopScope(
      onWillPop: () => _onBackPressed(context),
      child: Scaffold(
        body: ScrollableContent(
          header: const Column(children: [
            BackNavigationHelpHeaderWidget(),
          ]),
          children: [
            BlocBuilder<ServiceDefinitionBloc, ServiceDefinitionState>(
              builder: (context, state) {
                List<TextEditingController> controller = [];
                List<TextEditingController> additionalController = [];
                state.mapOrNull(
                  serviceDefinitionFetch: (value) =>
                      value.selectedServiceDefinition?.attributes?.forEach((e) {
                    controller.add(TextEditingController());
                    additionalController.add(TextEditingController());
                  }),
                );

                return state.maybeMap(
                  orElse: () => Text(state.runtimeType.toString()),
                  serviceDefinitionFetch: (value) {
                    var i = -1;
                    i++;
                    var submitTriggered = false;

                    return Form(
                      key: abcKey, //assigning key to form
                      child: DigitCard(
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              localizations.translate(
                                value.selectedServiceDefinition!.code
                                    .toString(),
                              ),
                              style: theme.textTheme.displayMedium,
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              localizations.translate(i18.checklist.checklist),
                            ),
                          ),
                          ...value.selectedServiceDefinition!.attributes!.map((
                            e,
                          ) {
                            int index = value
                                .selectedServiceDefinition!.attributes!
                                .indexOf(e);

                            return Column(children: [
                              if (e.dataType == 'String') ...[
                                DigitTextField(
                                  onChange: (value) {
                                    abcKey.currentState?.validate();
                                  },
                                  isRequired: false,
                                  controller: controller[index],
                                  inputFormatter: [
                                    FilteringTextInputFormatter.allow(RegExp(
                                      "[a-zA-Z0-9]",
                                    )),
                                  ],
                                  validator: (value) {
                                    if (((value == null || value == '') &&
                                        e.required == true)) {
                                      return localizations
                                          .translate("${e.code}_REQUIRED");
                                    }
                                    if (e.regex != null) {
                                      return (RegExp(e.regex!).hasMatch(value!))
                                          ? null
                                          : localizations
                                              .translate("${e.code}_REGEX");
                                    }

                                    return null;
                                  },
                                  label: localizations.translate(
                                    '${value.selectedServiceDefinition?.code}.${e.code}',
                                  ),
                                ),
                              ] else if (e.dataType == 'Number') ...[
                                DigitTextField(
                                  onChange: (value) {
                                    abcKey.currentState?.validate();
                                  },
                                  textStyle: theme.textTheme.headlineMedium,
                                  textInputType: TextInputType.number,
                                  inputFormatter: [
                                    FilteringTextInputFormatter.allow(RegExp(
                                      "[0-9]",
                                    )),
                                  ],
                                  validator: (value) {
                                    if (((value == null || value == '') &&
                                        e.required == true)) {
                                      return localizations.translate(
                                        i18.common.corecommonRequired,
                                      );
                                    }
                                    if (e.regex != null) {
                                      return (RegExp(e.regex!).hasMatch(value!))
                                          ? null
                                          : localizations
                                              .translate("${e.code}_REGEX");
                                    }

                                    return null;
                                  },
                                  controller: controller[index],
                                  label: '${localizations.translate(
                                        '${value.selectedServiceDefinition?.code}.${e.code}',
                                      ).trim()} ${e.required == true ? '*' : ''}',
                                ),
                              ] else if (e.dataType == 'MultiValueList') ...[
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Column(
                                      children: [
                                        Text(
                                          '${localizations.translate(
                                            '${value.selectedServiceDefinition?.code}.${e.code}',
                                          )} ${e.required == true ? '*' : ''}',
                                          style: theme.textTheme.headlineSmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                BlocBuilder<ServiceBloc, ServiceState>(
                                  builder: (context, state) {
                                    return Column(
                                      children: e.values!
                                          .map((e) => DigitCheckboxTile(
                                                label: e,
                                                value: controller[index]
                                                    .text
                                                    .split('.')
                                                    .contains(e),
                                                onChanged: (value) {
                                                  context
                                                      .read<ServiceBloc>()
                                                      .add(
                                                        ServiceChecklistEvent(
                                                          value: e.toString(),
                                                          submitTriggered:
                                                              submitTriggered,
                                                        ),
                                                      );
                                                  final String ele;
                                                  var val = controller[index]
                                                      .text
                                                      .split('.');
                                                  if (val.contains(e)) {
                                                    val.remove(e);
                                                    ele = val.join(".");
                                                  } else {
                                                    ele =
                                                        "${controller[i].text}.$e";
                                                  }
                                                  controller[index].value =
                                                      TextEditingController
                                                          .fromValue(
                                                    TextEditingValue(
                                                      text: ele,
                                                    ),
                                                  ).value;
                                                },
                                              ))
                                          .toList(),
                                    );
                                  },
                                ),
                              ] else if (e.dataType == 'SingleValueList') ...[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: Column(
                                          children: [
                                            Text(
                                              '${localizations.translate(
                                                '${value.selectedServiceDefinition?.code}.${e.code}',
                                              )} ${e.required == true ? '*' : ''}',
                                              style:
                                                  theme.textTheme.headlineSmall,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    BlocBuilder<ServiceBloc, ServiceState>(
                                      builder: (context, state) {
                                        return RadioGroup<String>.builder(
                                          groupValue:
                                              controller[index].text.trim(),
                                          onChanged: (value) {
                                            context.read<ServiceBloc>().add(
                                                  ServiceChecklistEvent(
                                                    value: Random()
                                                        .nextInt(100)
                                                        .toString(),
                                                    submitTriggered:
                                                        submitTriggered,
                                                  ),
                                                );
                                            controller[index].value =
                                                TextEditingController.fromValue(
                                              TextEditingValue(
                                                text: value!,
                                              ),
                                            ).value;
                                          },
                                          items:
                                              e.values != null ? e.values! : [],
                                          itemBuilder: (item) =>
                                              RadioButtonBuilder(
                                            item.trim(),
                                          ),
                                        );
                                      },
                                    ),
                                    BlocBuilder<ServiceBloc, ServiceState>(
                                      builder: (context, state) {
                                        return ((e.values?.length == 2 ||
                                                    e.values?.length == 3) &&
                                                controller[index].text ==
                                                    e.values?[1].trim())
                                            ? Padding(
                                                padding: const EdgeInsets.only(
                                                  bottom: 8,
                                                ),
                                                child: DigitTextField(
                                                  maxLength: 1000,
                                                  isRequired: true,
                                                  controller:
                                                      additionalController[
                                                          index],
                                                  label:
                                                      '${localizations.translate(
                                                    '${value.selectedServiceDefinition?.code}.${e.code}.ADDITIONAL_FIELD',
                                                  )}*',
                                                  validator: (value1) {
                                                    if (value1 == null ||
                                                        value1 == '') {
                                                      return localizations
                                                          .translate(
                                                        i18.common
                                                            .coreCommonReasonRequired,
                                                      );
                                                    }

                                                    return null;
                                                  },
                                                ),
                                              )
                                            : const SizedBox();
                                      },
                                    ),
                                    BlocBuilder<ServiceBloc, ServiceState>(
                                      builder: (context, state) {
                                        return Offstage(
                                          offstage: e.required == null ||
                                              e.required == true &&
                                                  controller[index]
                                                      .text
                                                      .trim()
                                                      .isNotEmpty ||
                                              !submitTriggered,
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              localizations.translate(
                                                i18.common.corecommonRequired,
                                              ),
                                              style: TextStyle(
                                                color: theme.colorScheme.error,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                    const DigitDivider(),
                                  ],
                                ),
                              ],
                            ]);
                          }).toList(),
                          const DigitDivider(),
                          const DigitDivider(),
                          const DigitDivider(),
                          const DigitDivider(),
                          const DigitDivider(),
                          const DigitDivider(),
                          const DigitDivider(),
                          const DigitDivider(),
                          const DigitDivider(),
                          DigitElevatedButton(
                            onPressed: () async {
                              final router = context.router;
                              submitTriggered = true;

                              context.read<ServiceBloc>().add(
                                    const ServiceChecklistEvent(
                                      value: '',
                                      submitTriggered: true,
                                    ),
                                  );
                              final isValid = abcKey.currentState?.validate();
                              if (!isValid!) {
                                return;
                              }
                              final itemsAttributes =
                                  value.selectedServiceDefinition!.attributes;
                              for (i = 0; i < controller.length; i++) {
                                if (itemsAttributes?[i].required == true &&
                                    (controller[i].text == '')) {
                                  return;
                                }
                              }

                              final shouldSubmit = await DigitDialog.show(
                                context,
                                options: DigitDialogOptions(
                                  titleText: localizations.translate(
                                    i18.checklist.checklistDialogLabel,
                                  ),
                                  content: Text(localizations.translate(
                                    i18.checklist.checklistDialogDescription,
                                  )),
                                  primaryAction: DigitDialogActions(
                                    label: localizations.translate(i18.checklist
                                        .checklistDialogPrimaryAction),
                                    action: (ctx) {
                                      final referenceId = IdGen.i.identifier;
                                      List<ServiceAttributesModel> attributes =
                                          [];
                                      for (i = 0; i < controller.length; i++) {
                                        final attribute = value
                                            .selectedServiceDefinition!
                                            .attributes!;
                                        attributes.add(ServiceAttributesModel(
                                          auditDetails: AuditDetails(
                                            createdBy: context.loggedInUserUuid,
                                            createdTime: context
                                                .millisecondsSinceEpoch(),
                                          ),
                                          attributeCode: '${attribute[i].code}',
                                          dataType: attribute[i].dataType,
                                          clientReferenceId: IdGen.i.identifier,
                                          referenceId: referenceId,
                                          value: controller[i]
                                                  .text
                                                  .toString()
                                                  .isEmpty
                                              ? null
                                              : controller[i].text.toString(),
                                          rowVersion: 1,
                                          tenantId: attribute[i].tenantId,
                                          additionalDetails:
                                              additionalController[i]
                                                      .text
                                                      .toString()
                                                      .isEmpty
                                                  ? null
                                                  : additionalController[i]
                                                      .text
                                                      .toString(),
                                        ));
                                      }

                                      context.read<ServiceBloc>().add(
                                            ServiceCreateEvent(
                                              serviceModel: ServiceModel(
                                                createdAt: DateFormat(
                                                  'dd/MM/yyyy hh:mm',
                                                ).format(DateTime.now()),
                                                tenantId: value
                                                    .selectedServiceDefinition!
                                                    .tenantId,
                                                clientId: referenceId,
                                                serviceDefId: value
                                                    .selectedServiceDefinition
                                                    ?.id,
                                                attributes: attributes,
                                                rowVersion: 1,
                                                accountId: context.projectId,
                                                auditDetails: AuditDetails(
                                                  createdBy:
                                                      context.loggedInUserUuid,
                                                  createdTime: DateTime.now()
                                                      .millisecondsSinceEpoch,
                                                ),
                                                additionalDetails:
                                                    context.boundary.code,
                                              ),
                                            ),
                                          );

                                      Navigator.of(
                                        context,
                                        rootNavigator: true,
                                      ).pop(true);
                                    },
                                  ),
                                  secondaryAction: DigitDialogActions(
                                    label: localizations.translate(i18.checklist
                                        .checklistDialogSecondaryAction),
                                    action: (context) {
                                      Navigator.of(
                                        context,
                                        rootNavigator: true,
                                      ).pop(false);
                                    },
                                  ),
                                ),
                              );
                              if (shouldSubmit ?? false) {
                                router.navigate(ChecklistRoute());
                                router.push(AcknowledgementRoute());
                              }
                            },
                            child: Text(
                              localizations
                                  .translate(i18.common.coreCommonSubmit),
                            ),
                          ),
                        ]),
                      ),
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

  Future<bool> _onBackPressed(BuildContext context) async {
    bool? shouldNavigateBack = await showDialog<bool>(
      context: context,
      builder: (context) => DigitDialog(
        options: DigitDialogOptions(
          titleText: localizations.translate(
            i18.checklist.checklistBackDialogLabel,
          ),
          content: Text(localizations.translate(
            i18.checklist.checklistBackDialogDescription,
          )),
          primaryAction: DigitDialogActions(
            label: localizations
                .translate(i18.checklist.checklistBackDialogPrimaryAction),
            action: (ctx) {
              Navigator.of(
                context,
                rootNavigator: true,
              ).pop(true);
            },
          ),
          secondaryAction: DigitDialogActions(
            label: localizations
                .translate(i18.checklist.checklistBackDialogSecondaryAction),
            action: (context) {
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
}
