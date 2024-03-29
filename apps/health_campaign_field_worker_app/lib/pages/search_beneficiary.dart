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
import '../widgets/showcase/config/showcase_constants.dart';
import '../widgets/showcase/showcase_button.dart';

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
        body: BlocBuilder<SearchHouseholdsBloc, SearchHouseholdsState>(
          builder: (context, searchState) {
            return ScrollableContent(
              header: const Column(children: [
                BackNavigationHelpHeaderWidget(
                  showcaseButton: ShowcaseButton(),
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
                              title:
                                  searchState.registeredHouseholds.toString(),
                              content: localizations.translate(
                                i18.searchBeneficiary.noOfHouseholdsRegistered,
                              ),
                            ),
                            BeneficiaryStatisticsModel(
                              title:
                                  searchState.deliveredInterventions.toString(),
                              content: localizations.translate(
                                i18.searchBeneficiary.noOfResourcesDelivered,
                              ),
                            ),
                          ],
                        ),
                      ),
                      DigitInfoCard(
                        description: localizations.translate(
                          i18.searchBeneficiary
                              .beneficiaryStatisticsInfoDescription,
                        ),
                        title: localizations.translate(
                          i18.searchBeneficiary.beneficiaryStatisticsInfoTitle,
                        ),
                      ),
                      searchBeneficiariesShowcaseData.nameOfHouseholdHead
                          .buildWith(
                        child: DigitSearchBar(
                          controller: searchController,
                          hintText: localizations.translate(
                            i18.searchBeneficiary.beneficiarySearchHintText,
                          ),
                          textCapitalization: TextCapitalization.words,
                          onChanged: (value) {
                            final bloc = context.read<SearchHouseholdsBloc>();
                            if (value.trim().length < 2) {
                              bloc.add(const SearchHouseholdsClearEvent());

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
                            i18.searchBeneficiary.beneficiaryInfoDescription,
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
                      final i = searchState.householdMembers.elementAt(index);

                      return ViewBeneficiaryCard(
                        householdMember: i,
                        hasShowcase: index == 0,
                        onOpenPressed: () async {
                          final bloc = context.read<SearchHouseholdsBloc>();
                          context.read<SearchHouseholdsBloc>().add(
                                SearchHouseholdsSetBeneficiaryWrapperEvent(
                                  householdMemberWrapper: i,
                                ),
                              );
                          await context.router.push(
                            HouseholdOverviewWrapperRoute(
                              wrapper: i,
                            ),
                          );

                          searchController.clear();
                          bloc.add(
                            const SearchHouseholdsClearEvent(),
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
        bottomNavigationBar: Offstage(
          offstage: isKeyboardVisible,
          child: SizedBox(
            height: 85,
            child:
                searchBeneficiariesShowcaseData.registerNewHousehold.buildWith(
              child: DigitCard(
                margin: const EdgeInsets.only(left: 0, right: 0, top: 10),
                child: BlocBuilder<SearchHouseholdsBloc, SearchHouseholdsState>(
                  builder: (context, state) {
                    final router = context.router;

                    VoidCallback? onPressed;

                    onPressed = state.loading
                        ? null
                        : () async {
                            final bloc = context.read<SearchHouseholdsBloc>();

                            await router.push(
                              BeneficiaryRegistrationWrapperRoute(
                                initialState:
                                    BeneficiaryRegistrationCreateState(
                                  searchQuery: state.searchQuery,
                                ),
                              ),
                            );

                            final householdMemberWrapper =
                                bloc.state.householdMemberWrapper;

                            if (householdMemberWrapper != null) {
                              await router.push(BeneficiaryWrapperRoute(
                                wrapper: householdMemberWrapper,
                              ));
                            }

                            searchController.clear();
                            bloc.add(
                              const SearchHouseholdsClearEvent(),
                            );
                          };

                    return DigitElevatedButton(
                      onPressed: onPressed,
                      child: Center(
                        child: Text(localizations.translate(
                          i18.searchBeneficiary.beneficiaryAddActionLabel,
                        )),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
