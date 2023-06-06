import 'package:digit_components/digit_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import '../blocs/beneficiary_registration/beneficiary_registration.dart';
import '../blocs/search_households/search_households.dart';
import '../models/beneficiary_statistics/beneficiary_statistics_model.dart';
import '../router/app_router.dart';
import '../utils/i18_key_constants.dart' as i18;
import '../utils/utils.dart';
import '../widgets/beneficiary/beneficiary_statistics_card.dart';
import '../widgets/beneficiary/view_beneficiary_card.dart';
import '../widgets/header/back_navigation_help_header.dart';
import '../widgets/localized.dart';
import 'package:overlay_builder/overlay_builder.dart';

class SearchBeneficiaryPage extends LocalizedStatefulWidget {
  const SearchBeneficiaryPage({
    super.key,
    super.appLocalizations,
  });

  @override
  State<SearchBeneficiaryPage> createState() => _SearchBeneficiaryPageState();
}

class _SearchBeneficiaryPageState
    extends LocalizedState<SearchBeneficiaryPage> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) => Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: DigitWalkthroughWrapper(
            key: Constants.searchBeneficiaryOverlayWrapperkey,
            overlayWidget: Constants.searchBeneficiaryOverlaykey,
            keysArray: Constants.searchBeneficiaryOverlayWidgetStateList,
            widgetKey: Constants.searchBeneficiaryWalkthroughWidgetStateList,
            child: IgnorePointer(
              ignoring: Constants.searchBeneficiaryOverlayWrapperkey
                      .currentState?.showOverlay ??
                  false,
              child: BlocBuilder<SearchHouseholdsBloc, SearchHouseholdsState>(
                builder: (context, searchState) {
                  return ScrollableContent(
                    header: Column(children: [
                      BackNavigationHelpHeaderWidget(
                        showBackNavigation: true,
                        helpClicked: () {
                          for (var i = 0;
                              i <
                                  Constants
                                      .searchBeneficiaryWalkthroughWidgetStateList
                                      .length;
                              i++) {
                            Constants
                                .searchBeneficiaryWalkthroughWidgetStateList[i]
                                .currentState
                                ?.initOffsetsPositions();
                          }
                          Constants
                              .searchBeneficiaryOverlayWrapperkey.currentState
                              ?.onSelectedTap();
                        },
                      ),
                    ]),
                    slivers: [
                      SliverToBoxAdapter(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  localizations.translate(
                                    i18.searchBeneficiary.statisticsLabelText,
                                  ),
                                  style: theme.textTheme.displayMedium,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            BeneficiaryStatisticsCard(
                              beneficiaryStatistics:
                                  BeneficiaryStatisticsWrapperModel(
                                beneficiaryStatisticsList: [
                                  BeneficiaryStatisticsModel(
                                    title: searchState.registeredHouseholds
                                        .toString(),
                                    content: localizations.translate(
                                      i18.searchBeneficiary
                                          .noOfHouseholdsRegistered,
                                    ),
                                  ),
                                  BeneficiaryStatisticsModel(
                                    title: searchState.deliveredInterventions
                                        .toString(),
                                    content: localizations.translate(
                                      i18.searchBeneficiary
                                          .noOfResourcesDelivered,
                                    ),
                                  ),
                                ],
                              ),
                              localizations: localizations,
                            ),
                            DigitWalkthrough(
                              onSkip: () => {
                                Constants.searchBeneficiaryOverlayWrapperkey
                                    .currentState
                                    ?.onSelectedSkip(),
                              },
                              widgetHeight: 70,
                              onTap: () {
                                Constants.searchBeneficiaryOverlayWrapperkey
                                    .currentState
                                    ?.onSelectedTap();
                              },
                              key: Constants
                                  .searchBeneficiaryWalkthroughWidgetStateList[2],
                              description: localizations
                                  .translate(i18.common.searchBeneficiaryHelp),
                              overlayWidget: Constants
                                  .searchBeneficiaryOverlayWidgetStateList[2],
                              titleAlignment: TextAlign.center,
                              child: DigitSearchBar(
                                controller: searchController,
                                hintText: localizations.translate(
                                  i18.searchBeneficiary
                                      .beneficiarySearchHintText,
                                ),
                                textCapitalization: TextCapitalization.words,
                                onChanged: (value) {
                                  final bloc =
                                      context.read<SearchHouseholdsBloc>();
                                  if (value.trim().length < 2) {
                                    bloc.add(
                                        const SearchHouseholdsClearEvent());

                                    return;
                                  }

                                  bloc.add(
                                    SearchHouseholdsSearchByHouseholdHeadEvent(
                                      searchText: value.trim(),
                                      projectId: context.projectId,
                                    ),
                                  );
                                },
                              ),
                            ),
                            const SizedBox(height: 16),
                            if (searchState.resultsNotFound)
                              DigitInfoCard(
                                description: localizations.translate(
                                  i18.searchBeneficiary
                                      .beneficiaryInfoDescription,
                                ),
                                title: localizations.translate(
                                  i18.searchBeneficiary.beneficiaryInfoTitle,
                                ),
                              ),
                          ],
                        ),
                      ),
                      if (searchState.loading)
                        const SliverFillRemaining(
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (ctx, index) {
                            final i =
                                searchState.householdMembers.elementAt(index);

                            return ViewBeneficiaryCard(
                              householdMember: i,
                              onOpenPressed: () async {
                                final bloc =
                                    context.read<SearchHouseholdsBloc>();
                                final projectId = context.projectId;

                                await context.router.push(
                                  BeneficiaryWrapperRoute(
                                    wrapper: i,
                                  ),
                                );

                                bloc.add(
                                  SearchHouseholdsSearchByHouseholdHeadEvent(
                                    searchText: searchController.text,
                                    projectId: projectId,
                                  ),
                                );
                              },
                            );
                          },
                          childCount: searchState.householdMembers.length,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
        bottomNavigationBar: Offstage(
          offstage: isKeyboardVisible,
          child: SizedBox(
            height: 85,
            child: DigitCard(
              margin: const EdgeInsets.only(left: 0, right: 0, top: 10),
              child: BlocBuilder<SearchHouseholdsBloc, SearchHouseholdsState>(
                builder: (context, state) {
                  final router = context.router;

                  final searchQuery = state.searchQuery;
                  VoidCallback? onPressed;

                  onPressed = state.loading
                      // searchQuery == null ||
                      // searchQuery.isEmpty
                      ? null
                      : () async {
                          final bloc = context.read<SearchHouseholdsBloc>();
                          final projectId = context.projectId;

                          await router
                              .push(BeneficiaryRegistrationWrapperRoute(
                            initialState: BeneficiaryRegistrationCreateState(
                              searchQuery: state.searchQuery,
                            ),
                          ))
                              .then((value) async {
                            await router.push(BeneficiaryWrapperRoute(
                              wrapper: bloc.householdMemberWrapper,
                            ));
                          });

                          // await   router.push(BeneficiaryWrapperRoute(
                          //     wrapper: bloc.householdMemberWrapper,
                          //   ));
                          bloc.add(
                            SearchHouseholdsSearchByHouseholdHeadEvent(
                              searchText: searchController.text,
                              projectId: projectId,
                            ),
                          );
                        };

                  return DigitWalkthrough(
                    onSkip: () => {
                      Constants.searchBeneficiaryOverlayWrapperkey.currentState
                          ?.onSelectedSkip(),
                    },
                    widgetHeight: 50,
                    onTap: () {
                      Constants.searchBeneficiaryOverlayWrapperkey.currentState
                          ?.onSelectedTap();
                    },
                    key: Constants
                        .searchBeneficiaryWalkthroughWidgetStateList[3],
                    description:
                        localizations.translate(i18.common.addBeneficiaryHelp),
                    overlayWidget:
                        Constants.searchBeneficiaryOverlayWidgetStateList[3],
                    titleAlignment: TextAlign.center,
                    child: DigitElevatedButton(
                      onPressed: onPressed,
                      child: Center(
                        child: Text(localizations.translate(
                          i18.searchBeneficiary.beneficiaryAddActionLabel,
                        )),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
