import 'package:flutter/material.dart';
import './triangularpointer.dart';
import 'package:digit_components/digit_components.dart';
import 'package:overlay_builder/overlay_builder.dart';

class AnchoredOverlay extends StatelessWidget {
  final bool showOverlay;
  final Widget child;
  final String description;
  final GlobalKey paramKey;
  final VoidCallback onTap;
  final VoidCallback onSkip;
  final Offset position;
  final double childHeight;
  final double childWidth;

  const AnchoredOverlay({
    super.key,
    required this.showOverlay,
    required this.child,
    required this.description,
    required this.paramKey,
    required this.onTap,
    required this.onSkip,
    required this.position,
    required this.childHeight,
    required this.childWidth,
  });

  @override
  Widget build(BuildContext context) {
    late double postion = 0.0;

    if (MediaQuery.of(context).size.width / 2 < childWidth) {
      postion = position.dx;
    } else {
      if (position.dx > MediaQuery.of(context).size.width / 2) {
        postion = childWidth;
      } else {
        postion = position.dx;
      }
    }
    return OverlayBuilder(
      type: OverlayType.fullscreen,
      key: paramKey,
      overlayChild: Stack(children: [
        Positioned(
          top: position.dy + childHeight - 20,
          left: position.dx + childHeight / 2,
          child: const TriangularShape(),
        ),
        Positioned(
            top: position.dy + childHeight + 12,
            left: postion,
            child: Card(
                elevation: 10,
                margin: DigitTheme.instance.containerMargin,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            description,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                    height: 30, //height of button
                                    child: TextButton(
                                      onPressed: onSkip,
                                      child: const Text(
                                        'Skip',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    )),
                                SizedBox(
                                    height: 30, //height of button
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        elevation: 3, //elevation of button
                                        shape: RoundedRectangleBorder(
                                            //to set border radius to button
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        //content padding inside button
                                      ),
                                      onPressed: onTap,
                                      child: const Text(
                                        // ignore: dead_code
                                        true ? 'Next' : 'End',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ))
                              ])
                        ],
                      )),
                )))
      ]),
      child: showOverlay
          ? Scaffold(
              body: Card(
              margin: EdgeInsets.zero,
              elevation: 10,
              child: Material(
                  elevation: 6,
                  type: MaterialType.transparency,
                  child: IgnorePointer(
                    ignoring: true,
                    child: child,
                  )),
            ))
          : SizedBox(
              height: childHeight,
              child: child,
            ),
    );
  }
}
