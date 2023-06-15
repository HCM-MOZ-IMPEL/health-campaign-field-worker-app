import 'package:digit_showcase/showcase.dart';
import 'package:digit_showcase/showcase_widget.dart';
import 'package:flutter/material.dart';

import '../localized.dart';

class ShowcaseItemBuilder {
  final GlobalKey showcaseKey;
  final String messageLocalizationKey;

  ShowcaseItemBuilder({required this.messageLocalizationKey})
      : showcaseKey = GlobalKey(debugLabel: messageLocalizationKey);

  Widget buildWith({required Widget child}) => ShowcaseItemWrapperWidget(
        showcaseKey: showcaseKey,
        messageLocalizationKey: messageLocalizationKey,
        child: child,
      );
}

class ShowcaseItemWrapperWidget extends LocalizedStatefulWidget {
  final Widget child;
  final String messageLocalizationKey;
  final GlobalKey showcaseKey;

  const ShowcaseItemWrapperWidget({
    super.key,
    required this.messageLocalizationKey,
    required this.child,
    required this.showcaseKey,
  });

  @override
  LocalizedState<ShowcaseItemWrapperWidget> createState() =>
      _ShowcaseItemWrapperWidgetState();
}

class _ShowcaseItemWrapperWidgetState
    extends LocalizedState<ShowcaseItemWrapperWidget> {
  @override
  Widget build(BuildContext context) {
    return Showcase(
      key: widget.showcaseKey,
      disableMovingAnimation: true,
      disableScaleAnimation: true,
      description: localizations.translate(widget.messageLocalizationKey),
      child: widget.child,
      targetPadding: const EdgeInsets.all(8),
    );

    return Showcase.withWidget(
      key: widget.showcaseKey,
      height: 100,
      width: MediaQuery.of(context).size.width * 0.1,
      disableMovingAnimation: true,
      overlayOpacity: 0.6,
      targetPadding: const EdgeInsets.all(8),
      container: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(16),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                localizations.translate(widget.messageLocalizationKey),
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      ShowcaseWidget.of(context).dismiss();
                    },
                    child: const Text('Skip'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 2,
                      ),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: () {
                      ShowcaseWidget.of(context).next();
                    },
                    child: const Text('Next'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      child: widget.child,
    );
  }
}
