import 'package:digit_components/digit_components.dart';
import 'package:digit_components/widgets/atoms/digit_toaster.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/localization/app_localization.dart';
import '../../blocs/auth/auth.dart';
import '../../router/app_router.dart';
import '../../utils/checkbandwidth.dart';
import '../../utils/constants.dart';
import '../../utils/i18_key_constants.dart' as i18;

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var t = AppLocalizations.of(context);

    return BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                color: theme.colorScheme.secondary.withOpacity(0.12),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: state.maybeMap(
                    authenticated: (value) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          value.userModel.name.toString(),
                          style: theme.textTheme.displayMedium,
                        ),
                        Text(
                          value.userModel.mobileNumber.toString(),
                          style: theme.textTheme.labelSmall,
                        ),
                      ],
                    ),
                    orElse: () => const Offstage(),
                  ),
                ),
              ),
              DigitIconTile(
                title: AppLocalizations.of(context).translate(
                  i18.common.coreCommonHome,
                ),
                icon: Icons.home,
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop();
                  context.router.replace(HomeRoute());
                },
              ),
              DigitIconTile(
                title: AppLocalizations.of(context)
                    .translate(i18.common.coreCommonLogout),
                icon: Icons.logout,
                onPressed: () async {
                  final isConnected = await getIsConnected();
                  if (context.mounted) {
                    if (isConnected) {
                      DigitDialog.show(
                        context,
                        options: DigitDialogOptions(
                          titleText: t.translate(
                            i18.deliverIntervention.dialogTitle,
                          ),
                          contentText: t.translate(
                            i18.deliverIntervention.dialogContent,
                          ),
                          primaryAction: DigitDialogActions(
                            label: t.translate(i18.common.coreCommonNo),
                            action: (ctx) => Navigator.of(
                              context,
                              rootNavigator: true,
                            ).pop(true),
                          ),
                          secondaryAction: DigitDialogActions(
                            label: t.translate(i18.common.coreCommonYes),
                            action: (ctx) {
                              context
                                  .read<AuthBloc>()
                                  .add(const AuthLogoutEvent());
                              Navigator.of(
                                context,
                                rootNavigator: true,
                              ).pop(true);
                            },
                          ),
                        ),
                      );
                    } else {
                      DigitToast.show(
                        context,
                        options: DigitToastOptions(
                          AppLocalizations.of(context).translate(
                            i18.login.noInternetError,
                          ),
                          true,
                          theme,
                        ),
                      );
                    }
                  }
                },
              ),
            ],
          ),
          PoweredByDigit(
            version: Constants().version,
          ),
        ],
      );
    });
  }
}
