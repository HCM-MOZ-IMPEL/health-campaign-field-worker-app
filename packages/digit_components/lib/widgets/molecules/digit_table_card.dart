import 'package:digit_components/theme/digit_theme.dart';
import 'package:flutter/material.dart';

class DigitTableCard extends StatelessWidget {
  final Map<String, dynamic> element;
  final Border? border;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final double gap;
  final num fraction;

  const DigitTableCard({
    super.key,
    required this.element,
    this.border,
    this.color,
    this.padding,
    this.gap = 0,
    this.fraction = 2,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4),
          border: border,
        ),
        child: Padding(
          padding: padding ?? const EdgeInsets.only(right: 8, bottom: 16),
          child: Column(
            children: element.keys
                .map((e) => Container(
                      margin: DigitTheme.instance.verticalMargin,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / fraction,
                            child: Text(
                              e,
                              style: theme.textTheme.headline5,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          SizedBox(width: gap),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 1.4),
                              child: Text(element[e].toString()),
                            ),
                          ),
                        ],
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}

class TableValues extends StatelessWidget {
  final String title;
  final String value;

  const TableValues({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 6,
            child: Text(title, style: theme.textTheme.headline5),
          ),
          const SizedBox(width: 6),
          Expanded(flex: 5, child: Text(value)),
        ],
      ),
    );
  }
}
