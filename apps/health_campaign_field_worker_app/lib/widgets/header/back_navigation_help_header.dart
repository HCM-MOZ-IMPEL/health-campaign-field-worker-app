import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/auth/auth.dart';
import '../../blocs/localization/app_localization.dart';
import '../../router/app_router.dart';
import '../../utils/i18_key_constants.dart' as i18;
import '../showcase/showcase_button.dart';

class BackNavigationHelpHeaderWidget extends StatelessWidget {
  final ShowcaseButton? showcaseButton;
  final bool showHelp;
  final bool showBackNavigation;
  final bool showLogoutCTA;

  const BackNavigationHelpHeaderWidget({
    super.key,
    this.showHelp = true,
    this.showcaseButton,
    this.showBackNavigation = true,
    this.showLogoutCTA = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        if (context.router.canPop() && showBackNavigation) ...[
          const SizedBox(width: 8),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: theme.colorScheme.onBackground,
              padding: EdgeInsets.zero,
            ),
            onPressed: () => context.router.pop(),
            child: Row(
              children: [
                const Icon(Icons.arrow_left_sharp),
                Text(AppLocalizations.of(context)
                    .translate(i18.common.coreCommonBack)),
              ],
            ),
          ),
        ],
        if (showLogoutCTA) ...[
          const SizedBox(width: 8),
          TextButton(
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            onPressed: () {
              context.read<AuthBloc>().add(const AuthLogoutEvent());
            },
            child: Row(
              children: [
                Text(AppLocalizations.of(context)
                    .translate(i18.common.coreCommonLogout)),
                const Icon(Icons.logout_outlined),
              ],
            ),
          ),
        ],
        const Spacer(),
        if (showcaseButton != null) showcaseButton!,
      ],
    );
  }
}
