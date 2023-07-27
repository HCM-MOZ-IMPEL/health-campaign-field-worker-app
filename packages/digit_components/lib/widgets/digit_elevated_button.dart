import 'package:digit_components/digit_components.dart';
import 'package:flutter/material.dart';

class DigitElevatedButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;

  const DigitElevatedButton({
    super.key,
    required this.child,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 50, minHeight: 40),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: DigitTheme.instance.colors.woodsmokeBlack,
            width: 2,
          ),
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        onPressed: onPressed,
        child: Center(child: child),
      ),
    );
  }
}
