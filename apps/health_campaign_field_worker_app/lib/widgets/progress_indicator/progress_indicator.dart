import 'package:digit_components/widgets/digit_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/auth/auth.dart';
import '../../models/auth/auth_model.dart';

class ProgressIndicatorContainer extends StatelessWidget {
  final String label;
  final String prefixLabel;
  final String suffixLabel;
  final double value;

  const ProgressIndicatorContainer({
    super.key,
    required this.label,
    required this.prefixLabel,
    required this.suffixLabel,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final state = context.read<AuthBloc>().state;
    if (state is! AuthAuthenticatedState) {
      return Container();
    }
    final roles = state.userModel.roles.map((e) {
      return e.code;
    });

    if(roles.contains(UserRoleCodeEnum.warehouseManager)){
      return Container();
    }

    final theme = Theme.of(context);

    return DigitCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            label,
            style: theme.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: [
                LinearProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    theme.colorScheme.onSurfaceVariant,
                  ),
                  value: value,
                  minHeight: 7.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        prefixLabel,
                        style: theme.textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        suffixLabel,
                        style: theme.textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
