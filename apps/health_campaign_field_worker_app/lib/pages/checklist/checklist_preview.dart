import 'package:collection/collection.dart';
import 'package:digit_components/digit_components.dart';
import 'package:digit_components/widgets/atoms/digit_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/service/service.dart';
import '../../blocs/service_definition/service_definition.dart';
import '../../utils/i18_key_constants.dart' as i18;
import '../../widgets/header/back_navigation_help_header.dart';
import '../../widgets/localized.dart';
import '../../widgets/showcase/config/showcase_constants.dart';
import '../../widgets/showcase/showcase_button.dart';

class ChecklistPreviewPage extends LocalizedStatefulWidget {
  const ChecklistPreviewPage({
    Key? key,
    super.appLocalizations,
  }) : super(key: key);

  @override
  State<ChecklistPreviewPage> createState() => _ChecklistPreviewPageState();
}

class _ChecklistPreviewPageState extends LocalizedState<ChecklistPreviewPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: ScrollableContent(
        header: const Column(children: [
          BackNavigationHelpHeaderWidget(
            showcaseButton: ShowcaseButton(),
          ),
        ]),
        footer: BlocBuilder<ServiceBloc, ServiceState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const Offstage(),
              serviceSearch: (value1, value2, value3) {
                return value2 != null
                    ? DigitCard(
                        child: DigitElevatedButton(
                          onPressed: () {
                            context.read<ServiceBloc>().add(
                                  ServiceResetEvent(serviceList: value1),
                                );
                          },
                          child: Text(
                            localizations.translate(i18.common.corecommonclose),
                          ),
                        ),
                      )
                    : const Offstage();
              },
            );
          },
        ),
        slivers: [
          SliverToBoxAdapter(
            child: BlocBuilder<ServiceBloc, ServiceState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const Offstage(),
                  serviceSearch: (value1, value2, value3) {
                    return value2 == null
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ...value1.mapIndexed((i, e) {
                                final serviceDefId = e.serviceDefId;
                                if (serviceDefId == null) {
                                  return const Offstage();
                                }

                                Widget openButton = DigitOutLineButton(
                                  label: localizations.translate(
                                    i18.searchBeneficiary.iconLabel,
                                  ),
                                  onPressed: () {
                                    context.read<ServiceBloc>().add(
                                          ServiceSelectionEvent(
                                            service: e,
                                          ),
                                        );
                                  },
                                );

                                if (i == 0) {
                                  openButton =
                                      checklistListShowcaseData.open.buildWith(
                                    child: openButton,
                                  );
                                }

                                return DigitCard(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          e.createdAt.toString(),
                                          style: theme.textTheme.headlineMedium,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            child: Text(
                                              localizations.translate(
                                                '${e.tenantId}',
                                              ),
                                            ),
                                          ),
                                          openButton,
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ],
                          )
                        : BlocBuilder<ServiceDefinitionBloc,
                            ServiceDefinitionState>(builder: (context, state) {
                            return state.maybeWhen(
                              serviceDefinitionFetch: (
                                item1,
                                item2,
                              ) {
                                return DigitCard(
                                  child: Column(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        margin: const EdgeInsets.all(8),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              localizations.translate(
                                                item2!.code.toString(),
                                              ),
                                              style:
                                                  theme.textTheme.displayMedium,
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                localizations.translate(
                                                  i18.checklist.checklist,
                                                ),
                                              ),
                                            ),
                                            ...value2.attributes!.map(
                                              (e) => Padding(
                                                padding:
                                                    const EdgeInsets.all(8),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                        localizations.translate(
                                                          "${item2.code}.${e.attributeCode!}",
                                                        ),
                                                        style: theme.textTheme
                                                            .headlineSmall,
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: const EdgeInsets
                                                              .only()
                                                          .copyWith(
                                                        top: kPadding,
                                                        bottom: kPadding,
                                                      ),
                                                      child: Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text(
                                                          localizations
                                                              .translate(
                                                            e.value ?? "",
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    e.additionalDetails != '' &&
                                                            e.additionalDetails !=
                                                                null
                                                        ? Container(
                                                            margin:
                                                                const EdgeInsets
                                                                        .only()
                                                                    .copyWith(
                                                              top: kPadding,
                                                              bottom: kPadding,
                                                            ),
                                                            child: Column(
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child: Text(
                                                                    localizations
                                                                        .translate(
                                                                      "${item2.code}.${e.attributeCode!}.ADDITIONAL_FIELD",
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child: Text(
                                                                    localizations
                                                                        .translate(
                                                                      e.additionalDetails,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          )
                                                        : const Offstage(),
                                                    const DigitDivider(),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ].toList(),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              orElse: () => const Offstage(),
                            );
                          });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
