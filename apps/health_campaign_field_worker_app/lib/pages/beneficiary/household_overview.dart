import 'package:collection/collection.dart';
import 'package:digit_components/digit_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../blocs/beneficiary_registration/beneficiary_registration.dart';
import '../../blocs/delivery_intervention/deliver_intervention.dart';
import '../../blocs/household_overview/household_overview.dart';
import '../../router/app_router.dart';
import '../../utils/i18_key_constants.dart' as i18;
import '../../utils/utils.dart';
import '../../widgets/header/back_navigation_help_header.dart';
import '../../widgets/localized.dart';
import '../../widgets/member_card/member_card.dart';
import '../../widgets/showcase/config/showcase_constants.dart';
import '../../widgets/showcase/showcase_button.dart';

class HouseholdOverviewPage extends LocalizedStatefulWidget {
  const HouseholdOverviewPage({super.key, super.appLocalizations});

  @override
  State<HouseholdOverviewPage> createState() => _HouseholdOverviewPageState();
}

class _HouseholdOverviewPageState
    extends LocalizedState<HouseholdOverviewPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<HouseholdOverviewBloc, HouseholdOverviewState>(
      builder: (ctx, state) {
        return Scaffold(
          body: state.loading
              ? const Center(child: CircularProgressIndicator())
              : BlocBuilder<HouseholdOverviewBloc, HouseholdOverviewState>(
                  builder: (ctx, state) {
                    if (state.loading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    return ScrollableContent(
                      header: const Column(children: [
                        BackNavigationHelpHeaderWidget(
                          showcaseButton: ShowcaseButton(),
                        ),
                      ]),
                      slivers: [
                        SliverToBoxAdapter(
                          child: DigitCard(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        localizations.translate(
                                          i18.householdOverView
                                              .householdOverViewLabel,
                                        ),
                                        style: theme.textTheme.displayMedium,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                BlocBuilder<DeliverInterventionBloc,
                                    DeliverInterventionState>(
                                  builder: (ctx, state) => Align(
                                    alignment: Alignment.centerLeft,
                                    child: householdOverviewShowcaseData
                                        .deliveryStatus
                                        .buildWith(
                                      child: DigitIconButton(
                                        icon: state.task?.status == 'delivered'
                                            ? Icons.check_circle
                                            : Icons.info_rounded,
                                        iconText: localizations.translate(
                                          state.task?.status == 'delivered'
                                              ? i18.householdOverView
                                                  .householdOverViewDeliveredIconLabel
                                              : i18.householdOverView
                                                  .householdOverViewNotDeliveredIconLabel,
                                        ),
                                        iconTextColor:
                                            state.task?.status == 'delivered'
                                                ? DigitTheme
                                                    .instance
                                                    .colorScheme
                                                    .onSurfaceVariant
                                                : DigitTheme
                                                    .instance.colorScheme.error,
                                        iconColor:
                                            state.task?.status == 'delivered'
                                                ? DigitTheme
                                                    .instance
                                                    .colorScheme
                                                    .onSurfaceVariant
                                                : DigitTheme
                                                    .instance.colorScheme.error,
                                      ),
                                    ),
                                  ),
                                ),
                                householdOverviewShowcaseData.householdHead
                                    .buildWith(
                                  child: TableValues(
                                    title: localizations.translate(
                                      i18.householdOverView
                                          .householdOverViewHouseholdHeadNameLabel,
                                    ),
                                    value: [
                                      state.householdMemberWrapper
                                          .headOfHousehold.name?.givenName,
                                      state.householdMemberWrapper
                                          .headOfHousehold.name?.familyName,
                                    ].whereNotNull().join(' '),
                                  ),
                                ),
                                householdOverviewShowcaseData.administrativeArea
                                    .buildWith(
                                  child: TableValues(
                                    title: "${localizations.translate(
                                      i18.householdLocation
                                          .administrationAreaFormLabel,
                                    )}:",
                                    // change to pick boundary name from boundarycode
                                    value: state.householdMemberWrapper
                                            .household.address?.addressLine1 ??
                                        "",
                                  ),
                                ),
                                householdOverviewShowcaseData.memberCount
                                    .buildWith(
                                  child: TableValues(
                                    title: "${localizations.translate(
                                      i18.deliverIntervention.memberCountText,
                                    )}:",
                                    value: state.householdMemberWrapper
                                        .household.memberCount
                                        .toString(),
                                  ),
                                ),
                                Column(
                                  children: state.householdMemberWrapper.members
                                      .mapIndexed(
                                    (index, e) {
                                      final isHead = state
                                              .householdMemberWrapper
                                              .headOfHousehold
                                              .clientReferenceId ==
                                          e.clientReferenceId;

                                      return MemberCard(
                                        useShowcase: index == 0,
                                        isHead: isHead,
                                        editMemberAction: () async {
                                          final bloc =
                                              ctx.read<HouseholdOverviewBloc>();
                                          Navigator.of(
                                            context,
                                            rootNavigator: true,
                                          ).pop();

                                          final address = e.address?.first ??
                                              state.householdMemberWrapper
                                                  .household.address;
                                          if (address == null) {
                                            return;
                                          }

                                          final projectId = context.projectId;

                                          await context.router.root.push(
                                            BeneficiaryRegistrationWrapperRoute(
                                              initialState:
                                                  BeneficiaryRegistrationEditIndividualState(
                                                individualModel: e,
                                                householdModel: state
                                                    .householdMemberWrapper
                                                    .household,
                                                addressModel: address,
                                                householdMemberWrapper: state
                                                    .householdMemberWrapper,
                                              ),
                                              children: [
                                                IndividualDetailsRoute(
                                                  isHeadOfHousehold:
                                                      true, //since we have only household head in impel
                                                ),
                                              ],
                                            ),
                                          );

                                          bloc.add(
                                            HouseholdOverviewReloadEvent(
                                              projectId: projectId,
                                            ),
                                          );
                                        },
                                        setAsHeadAction: () {
                                          ctx.read<HouseholdOverviewBloc>().add(
                                                HouseholdOverviewSetAsHeadEvent(
                                                  individualModel: e,
                                                  projectId: ctx.projectId,
                                                  householdModel: state
                                                      .householdMemberWrapper
                                                      .household,
                                                ),
                                              );

                                          Navigator.of(
                                            context,
                                            rootNavigator: true,
                                          ).pop();
                                        },
                                        deleteMemberAction: () {
                                          DigitDialog.show(
                                            context,
                                            options: DigitDialogOptions(
                                              titleText: localizations.translate(i18
                                                  .householdOverView
                                                  .householdOverViewActionCardTitle),
                                              primaryAction: DigitDialogActions(
                                                label: localizations.translate(i18
                                                    .householdOverView
                                                    .householdOverViewPrimaryActionLabel),
                                                action: (ctx) {
                                                  Navigator.of(
                                                    context,
                                                    rootNavigator: true,
                                                  )
                                                    ..pop()
                                                    ..pop();

                                                  context
                                                      .read<
                                                          HouseholdOverviewBloc>()
                                                      .add(
                                                        HouseholdOverviewDeleteIndividualEvent(
                                                          projectId:
                                                              ctx.projectId,
                                                          householdModel: state
                                                              .householdMemberWrapper
                                                              .household,
                                                          individualModel: e,
                                                        ),
                                                      );
                                                },
                                              ),
                                              secondaryAction:
                                                  DigitDialogActions(
                                                label: localizations.translate(i18
                                                    .householdOverView
                                                    .householdOverViewSecondaryActionLabel),
                                                action: (context) {
                                                  Navigator.of(
                                                    context,
                                                    rootNavigator: true,
                                                  ).pop();
                                                },
                                              ),
                                            ),
                                          );
                                        },
                                        name:
                                            '${e.name?.givenName ?? ' - '} ${e.name?.familyName ?? ' - '}',
                                        age: (e.dateOfBirth == null
                                                ? null
                                                : DateFormat('dd/MM/yyyy')
                                                    .parse(e.dateOfBirth!)
                                                    .age) ??
                                            0,
                                        gender: localizations.translate(
                                          e.gender?.name.toUpperCase() ?? ' - ',
                                        ),
                                        isDelivered: false,
                                        localizations: localizations,
                                      );
                                    },
                                  ).toList(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
          bottomNavigationBar: SizedBox(
            height: 85,
            child:
                BlocBuilder<DeliverInterventionBloc, DeliverInterventionState>(
              builder: (ctx, state) => DigitCard(
                margin: const EdgeInsets.only(left: 0, right: 0, top: 10),
                child: state.task?.status == 'delivered'
                    ? DigitOutLineButton(
                        label: localizations.translate(
                          i18.memberCard.deliverDetailsViewLabel,
                        ),
                        onPressed: () async {
                          await context.router.push(DeliverInterventionRoute());
                        },
                      )
                    : householdOverviewShowcaseData.deliverIntervention
                        .buildWith(
                        child: DigitElevatedButton(
                          onPressed: () async {
                            final bloc = ctx.read<HouseholdOverviewBloc>();

                            final projectId = context.projectId;

                            await context.router
                                .push(DeliverInterventionRoute());

                            bloc.add(
                              HouseholdOverviewReloadEvent(
                                projectId: projectId,
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              localizations.translate(
                                i18.householdOverView
                                    .householdOverViewActionText,
                              ),
                            ),
                          ),
                        ),
                      ),
              ),
            ),
          ),
        );
      },
    );
  }
}
