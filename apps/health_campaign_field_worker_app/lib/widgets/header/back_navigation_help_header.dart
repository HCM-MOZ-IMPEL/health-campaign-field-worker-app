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

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                if (context.router.canPop() && showBackNavigation)
                  Flexible(
                    child: TextButton.icon(
                      style: TextButton.styleFrom(
                        foregroundColor: theme.colorScheme.onBackground,
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () => context.router.pop(),
                      icon: const Icon(Icons.arrow_left_sharp),
                      label: Text(
                        AppLocalizations.of(context).translate(
                          i18.common.coreCommonBack,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                SizedBox(width: showBackNavigation ? 16 : 0),
                if (showLogoutCTA)
                  Flexible(
                    child: TextButton.icon(
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {
                        context.read<AuthBloc>().add(const AuthLogoutEvent());
                      },
                      icon: const Icon(Icons.logout_outlined),
                      label: Text(
                        AppLocalizations.of(context).translate(
                          i18.common.coreCommonLogout,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(width: showcaseButton != null ? 16 : 0),
          if (showcaseButton != null) showcaseButton!,
        ],
      ),
    );
  }
}
