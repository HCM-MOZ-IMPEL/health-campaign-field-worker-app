import 'package:digit_components/digit_components.dart';
import 'package:digit_components/widgets/atoms/digit_toaster.dart';
import 'package:digit_components/widgets/digit_project_cell.dart';
import 'package:digit_components/widgets/scrollable_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../utils/i18_key_constants.dart' as i18;

import '../blocs/auth/auth.dart';
import '../blocs/boundary/boundary.dart';
import '../blocs/project/project.dart';
import '../router/app_router.dart';
import '../widgets/localized.dart';

class ProjectSelectionPage extends LocalizedStatefulWidget {
  const ProjectSelectionPage({
    super.key,
    super.appLocalizations,
  });

  @override
  State<ProjectSelectionPage> createState() => _ProjectSelectionPageState();
}

class _ProjectSelectionPageState extends LocalizedState<ProjectSelectionPage> {
  @override
  void initState() {
    context.read<ProjectBloc>().add(const ProjectInitializeEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // return Center(child: CircularProgressIndicator());
    return Scaffold(
      body: ScrollableContent(
        // header: Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     const BackNavigationHelpHeaderWidget(
        //       showLogoutCTA: true,
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.symmetric(
        //         horizontal: 16,
        //         vertical: 16,
        //       ),
        //       child: Text(
        //         localizations.translate(
        //           i18.projectSelection.projectDetailsLabelText,
        //         ),
        //         style: theme.textTheme.displayMedium,
        //       ),
        //     ),
        //   ],
        // ),
        children: [
          BlocConsumer<ProjectBloc, ProjectState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {
                  return;
                },
                fetched: (projects, selectedProject) {
                  // print('------- selecting project ------ done ------');
                  if (selectedProject != null) {
                    final boundary = selectedProject.address?.boundary;
                    if (boundary != null) {
                      context.read<BoundaryBloc>().add(
                            BoundarySearchEvent(
                              code: boundary,
                            ),
                          );
                      context.router.replace(HomeRoute());
                    } else {
                      DigitToast.show(
                        context,
                        options: DigitToastOptions(
                          'No boundary data associated with this project.',
                          true,
                          theme,
                        ),
                      );
                    }
                  }
                },
              );
            },
            builder: (context, state) {
              return state.maybeMap(
                orElse: (){
                  return const Expanded(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                },
                // orElse: () => Center(
                //   child: Padding(
                //     padding: const EdgeInsets.symmetric(vertical: 30),
                //     child: Column(
                //       children: [
                //         Text(localizations.translate(
                //           i18.projectSelection.noProjectsAssigned,
                //         )),
                //         Text(localizations.translate(
                //           i18.projectSelection.contactSysAdmin,
                //         )),
                //         Padding(
                //           padding: const EdgeInsets.symmetric(vertical: 30),
                //           child: SizedBox(
                //             width: 300,
                //             child: DigitElevatedButton(
                //               onPressed: () {
                //                 context
                //                     .read<AuthBloc>()
                //                     .add(const AuthLogoutEvent());
                //               },
                //               child: Center(
                //                 child: Text(
                //                   localizations.translate(
                //                     i18.common.coreCommonOk,
                //                   ),
                //                 ),
                //               ),
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                loading: (value) => const Expanded(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
                fetched: (ProjectSelectionFetchedState value) {
                  context.read<ProjectBloc>().add(
                        ProjectSelectProjectEvent(value.projects[0]),
                      );

                  return const Expanded(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );

                  return Column(
                    children: value.projects
                        .map(
                          (element) => DigitProjectCell(
                            projectText: element.name,
                            onTap: () => context.read<ProjectBloc>().add(
                                  ProjectSelectProjectEvent(element),
                                ),
                          ),
                        )
                        .toList(),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
