import 'dart:math';

import 'package:digit_components/digit_components.dart';
import 'package:digit_components/utils/date_utils.dart';
import 'package:digit_components/widgets/atoms/digit_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:group_radio_button/group_radio_button.dart';

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
  var submitTriggered = false;
  List<TextEditingController> controller = [];
  List<TextEditingController> additionalController = [];
  List<AttributesModel>? initialAttributes;
  bool areControllersInitialized = false;
  List<int> visibleIndexes = [];
  GlobalKey<FormState> abcKey = GlobalKey<FormState>();

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
                state.mapOrNull(
                  serviceDefinitionFetch: (value) {
                    initialAttributes =
                        value.selectedServiceDefinition?.attributes;
                    if (!areControllersInitialized) {
                      initialAttributes?.forEach((e) {
                        controller.add(TextEditingController());
                        additionalController.add(TextEditingController());
                      });

                      // Set the flag to true after initializing controllers
                      areControllersInitialized = true;
                    }
                  },
                );

                return state.maybeMap(
                  orElse: () => Text(state.runtimeType.toString()),
                  serviceDefinitionFetch: (value) {
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
                          ...initialAttributes!.map((
                            e,
                          ) {
                            int index = (initialAttributes ?? []).indexOf(e);

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
                                                        "${controller[index].text}.$e";
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
                                if (!(e.code ?? '').contains('.'))
                                  _buildChecklist(
                                    e,
                                    index,
                                    value.selectedServiceDefinition,
                                    context,
                                  ),
                              ],
                            ]);
                          }).toList(),
                          const SizedBox(
                            height: 15,
                          ),
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
                              final itemsAttributes = initialAttributes;

                              for (int i = 0; i < controller.length; i++) {
                                if (itemsAttributes?[i].required == true &&
                                    ((itemsAttributes?[i].dataType ==
                                                'SingleValueList' &&
                                            visibleIndexes.any((e) => e == i) &&
                                            (controller[i].text == '')) ||
                                        (itemsAttributes?[i].dataType !=
                                                'SingleValueList' &&
                                            (controller[i].text == '')))) {
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
                                      for (int i = 0;
                                          i < controller.length;
                                          i++) {
                                        if (controller[i]
                                            .text
                                            .trim()
                                            .isNotEmpty) {
                                          final attribute = initialAttributes;
                                          attributes.add(ServiceAttributesModel(
                                            auditDetails: AuditDetails(
                                              createdBy:
                                                  context.loggedInUserUuid,
                                              createdTime: context
                                                  .millisecondsSinceEpoch(),
                                            ),
                                            attributeCode:
                                                '${attribute?[i].code}',
                                            dataType: attribute?[i].dataType,
                                            clientReferenceId:
                                                IdGen.i.identifier,
                                            referenceId: referenceId,
                                            value: controller[i]
                                                    .text
                                                    .toString()
                                                    .isEmpty
                                                ? null
                                                : controller[i].text.toString(),
                                            rowVersion: 1,
                                            tenantId: attribute?[i].tenantId,
                                            additionalDetails: ((attribute?[i]
                                                                .values
                                                                ?.length ==
                                                            2 ||
                                                        attribute?[i]
                                                                .values
                                                                ?.length ==
                                                            3) &&
                                                    controller[i].text ==
                                                        attribute?[i]
                                                            .values?[1]
                                                            .trim())
                                                ? additionalController[i]
                                                        .text
                                                        .toString()
                                                        .isEmpty
                                                    ? null
                                                    : additionalController[i]
                                                        .text
                                                        .toString()
                                                : null,
                                          ));
                                        }
                                      }

                                      context.read<ServiceBloc>().add(
                                            ServiceCreateEvent(
                                              serviceModel: ServiceModel(
                                                createdAt: DigitDateUtils
                                                    .getDateFromTimestamp(
                                                  DateTime.now()
                                                      .toLocal()
                                                      .millisecondsSinceEpoch,
                                                  dateFormat:
                                                      "dd/MM/yyyy hh:mm a",
                                                ),
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

  Widget _buildChecklist(
    AttributesModel item,
    int index,
    ServiceDefinitionModel? selectedServiceDefinition,
    BuildContext context,
  ) {
    final theme = Theme.of(context);
    if (item.dataType == 'SingleValueList') {
      final childItems = getNextQuestions(
        item.code.toString(),
        initialAttributes ?? [],
      );

      if (!visibleIndexes.contains(index)) {
        visibleIndexes.add(index);
      }

      List<int> includedIndexes = visibleIndexes;
      List<int> excludedIndexes = [];

      for (int i = 0; i < (initialAttributes ?? []).length; i++) {
        if (!includedIndexes.contains(i)) {
          excludedIndexes.add(i);
        }
      }

      return Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0), // Add padding here
              child: Text(
                '${localizations.translate(
                  '${selectedServiceDefinition?.code}.${item.code}',
                )} ${item.required == true ? '*' : ''}',
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ),
          Column(
            children: [
              BlocBuilder<ServiceBloc, ServiceState>(
                builder: (context, state) {
                  return RadioGroup<String>.builder(
                    groupValue: controller[index].text.trim(),
                    onChanged: (value) {
                      context.read<ServiceBloc>().add(
                            ServiceChecklistEvent(
                              value: Random().nextInt(100).toString(),
                              submitTriggered: submitTriggered,
                            ),
                          );
                      setState(() {
                        controller[index].value =
                            TextEditingController.fromValue(
                          TextEditingValue(
                            text: value!,
                          ),
                        ).value;
                        if (excludedIndexes.isNotEmpty) {
                          for (int i = 0; i < excludedIndexes.length; i++) {
                            controller[excludedIndexes[i]].value =
                                TextEditingController.fromValue(
                              const TextEditingValue(
                                text: '',
                              ),
                            ).value;
                          }
                        }

                        // Remove corresponding controllers based on the removed attributes
                      });
                    },
                    items: item.values != null ? item.values! : [],
                    itemBuilder: (item) => RadioButtonBuilder(
                      item.trim(),
                    ),
                  );
                },
              ),
              BlocBuilder<ServiceBloc, ServiceState>(
                builder: (context, state) {
                  return ((item.values?.length == 2 ||
                              item.values?.length == 3) &&
                          controller[index].text == item.values?[1].trim())
                      ? Padding(
                          padding: const EdgeInsets.only(
                            bottom: 8,
                          ),
                          child: DigitTextField(
                            maxLength: 1000,
                            isRequired: true,
                            controller: additionalController[index],
                            label: '${localizations.translate(
                              '${selectedServiceDefinition?.code}.${item.code}.ADDITIONAL_FIELD',
                            )}*',
                            validator: (value1) {
                              if (value1 == null || value1 == '') {
                                return localizations.translate(
                                  i18.common.coreCommonReasonRequired,
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
                    offstage: item.required == null ||
                        item.required == true &&
                            controller[index].text.trim().isNotEmpty ||
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
          if (childItems.isNotEmpty &&
              controller[index].text.trim().isNotEmpty) ...[
            _buildNestedChecklists(
              item.code.toString(),
              index,
              controller[index].text.trim(),
              selectedServiceDefinition,
              context,
            ),
          ],
        ],
      );
    } else if (item.dataType == 'String') {
      return DigitTextField(
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
          if (((value == null || value == '') && item.required == true)) {
            return localizations.translate("${item.code}_REQUIRED");
          }
          if (item.regex != null) {
            return (RegExp(item.regex!).hasMatch(value!))
                ? null
                : localizations.translate("${item.code}_REGEX");
          }

          return null;
        },
        label: localizations.translate(
          '${selectedServiceDefinition?.code}.${item.code}',
        ),
      );
    } else if (item.dataType == 'Number') {
      return DigitTextField(
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
          if (((value == null || value == '') && item.required == true)) {
            return localizations.translate(
              i18.common.corecommonRequired,
            );
          }
          if (item.regex != null) {
            return (RegExp(item.regex!).hasMatch(value!))
                ? null
                : localizations.translate("${item.code}_REGEX");
          }

          return null;
        },
        controller: controller[index],
        label: '${localizations.translate(
              '${selectedServiceDefinition?.code}.${item.code}',
            ).trim()} ${item.required == true ? '*' : ''}',
      );
    } else if (item.dataType == 'MultiValueList') {
      return Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Text(
                    '${localizations.translate(
                      '${selectedServiceDefinition?.code}.${item.code}',
                    )} ${item.required == true ? '*' : ''}',
                    style: theme.textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
          ),
          BlocBuilder<ServiceBloc, ServiceState>(
            builder: (context, state) {
              return Column(
                children: item.values!
                    .map((e) => DigitCheckboxTile(
                          label: e,
                          value: controller[index].text.split('.').contains(e),
                          onChanged: (value) {
                            context.read<ServiceBloc>().add(
                                  ServiceChecklistEvent(
                                    value: e.toString(),
                                    submitTriggered: submitTriggered,
                                  ),
                                );
                            final String ele;
                            var val = controller[index].text.split('.');
                            if (val.contains(e)) {
                              val.remove(e);
                              ele = val.join(".");
                            } else {
                              ele = "${controller[index].text}.$e";
                            }
                            controller[index].value =
                                TextEditingController.fromValue(
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
        ],
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _buildNestedChecklists(
    String parentCode,
    int parentIndex,
    String parentControllerValue,
    ServiceDefinitionModel? selectedServiceDefinition,
    BuildContext context,
  ) {
    final childItems = getNextQuestions(
      parentCode,
      initialAttributes ?? [],
    );

    return Column(
      children: [
        for (final matchingChildItem in childItems.where((childItem) =>
            childItem.code!.startsWith('$parentCode.$parentControllerValue.')))
          _buildChecklist(
            matchingChildItem,
            initialAttributes?.indexOf(matchingChildItem) ??
                parentIndex, // Pass parentIndex here as we're building at the same level
            selectedServiceDefinition,
            context,
          ),
        for (final matchingChildItem in childItems.where((childItem) =>
            childItem.code!.startsWith('$parentCode.$parentControllerValue.')))
          _buildNestedChecklists(
            matchingChildItem.code!,
            initialAttributes?.indexOf(matchingChildItem) ?? parentIndex,
            controller[parentIndex]
                .text, // Pass parentIndex here as we're building at the same level
            selectedServiceDefinition,
            context,
          ),
      ],
    );
  }

  List<AttributesModel> getNextQuestions(
    String parentCode,
    List<AttributesModel> checklistItems,
  ) {
    final childCodePrefix = '$parentCode.';
    final nextCheckLists = checklistItems.where((item) {
      return item.code!.startsWith(childCodePrefix) &&
          item.code?.split('.').length == parentCode.split('.').length + 2;
    }).toList();

    return nextCheckLists;
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
