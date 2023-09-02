import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/delivery_intervention/deliver_intervention.dart';
import '../../blocs/household_overview/household_overview.dart';
import '../../blocs/search_households/search_households.dart';
import '../../models/entities/household.dart';
import '../../models/entities/household_member.dart';
import '../../models/entities/individual.dart';
import '../../models/entities/project_beneficiary.dart';
import '../../models/entities/task.dart';
import '../../utils/extensions/extensions.dart';

class HouseholdOverviewWrapperPage extends StatelessWidget {
  final HouseholdMemberWrapper wrapper;
  final bool isEditing;

  const HouseholdOverviewWrapperPage({
    Key? key,
    required this.wrapper,
    this.isEditing = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final task = context.repository<TaskModel, TaskSearchModel>();
    final individual =
        context.repository<IndividualModel, IndividualSearchModel>();

    final household =
        context.repository<HouseholdModel, HouseholdSearchModel>();

    final householdMember =
        context.repository<HouseholdMemberModel, HouseholdMemberSearchModel>();

    final projectBeneficiary = context
        .repository<ProjectBeneficiaryModel, ProjectBeneficiarySearchModel>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => HouseholdOverviewBloc(
            HouseholdOverviewState(
              householdMemberWrapper: wrapper,
            ),
            individualRepository: individual,
            householdRepository: household,
            householdMemberRepository: householdMember,
            projectBeneficiaryRepository: projectBeneficiary,
            taskDataRepository: task,
          ),
        ),
        BlocProvider(
          create: (_) => DeliverInterventionBloc(
            DeliverInterventionState(
              isEditing: isEditing,
            ),
            taskRepository: task,
          ),
        ),
      ],
      child: BlocBuilder<HouseholdOverviewBloc, HouseholdOverviewState>(
        builder: (context, houseHoldOverviewState) {
          return BlocProvider(
            lazy: false,
            create: (_) => DeliverInterventionBloc(
              DeliverInterventionState(
                isEditing: isEditing,
              ),
              taskRepository: task,
            )..add(DeliverInterventionSearchEvent(TaskSearchModel(
                projectBeneficiaryClientReferenceId: houseHoldOverviewState
                    .householdMemberWrapper
                    .projectBeneficiary
                    .clientReferenceId,
              ))),
            child: const AutoRouter(),
          );
        },
      ),
    );
  }
}
