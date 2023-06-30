import 'package:flutter/material.dart';

class LabeledField extends StatelessWidget {
  final Widget child;
  final String label;
  final TextStyle? textStyle;

  const LabeledField({
    super.key,
    required this.child,
    required this.label,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: textStyle ?? Theme.of(context).textTheme.labelSmall,
            ),
            const SizedBox(height: 8),
            child,
          ],
        ),
      );
}
