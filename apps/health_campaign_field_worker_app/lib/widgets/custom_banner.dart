import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomBanner extends StatelessWidget {
  final Color bannerColor;
  final Widget child;

  const CustomBanner({
    Key? key,
    required this.bannerColor,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Positioned(
        right: 0,
        top: 0,
        child: _Banner(bannerColor: bannerColor, child: child),
      );
}

class _Banner extends SingleChildRenderObjectWidget {
  final Color bannerColor;

  const _Banner({
    Key? key,
    required this.bannerColor,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _RenderBanner(bannerColor: bannerColor);
  }

  @override
  void updateRenderObject(BuildContext context, RenderObject renderObject) {
    (renderObject as _RenderBanner).bannerColor = bannerColor;
  }
}

class _RenderBanner extends RenderBox with RenderObjectWithChildMixin {
  Color _bannerColor;

  _RenderBanner({
    required Color bannerColor,
  }) : _bannerColor = bannerColor;

  set bannerColor(Color newColor) {
    if (newColor != _bannerColor) {
      _bannerColor = newColor;
      markNeedsPaint();
    }
  }

  @override
  void performLayout() {
    if (child == null) {
      size = Size.zero;

      return;
    }

    child!.layout(constraints, parentUsesSize: true);

    final childSize = (child as RenderBox).size;
    final dimension = getEndDistance(childSize);
    size = Size.square(dimension);
  }

  @override
  void paint(PaintingContext paintingContext, Offset offset) {
    if (child == null) return;

    final childSize = (child as RenderBox).size;
    final bannerPath = getBannerPath(
      offset: offset,
      contentSize: childSize,
    );

    paintingContext.canvas.drawPath(
      bannerPath,
      Paint()
        ..color = _bannerColor
        ..style = PaintingStyle.fill,
    );

    paintingContext.canvas.save();
    positionCanvasToDrawContent(
      canvas: paintingContext.canvas,
      offset: offset,
      size: childSize,
    );

    child!.paint(paintingContext, Offset.zero);
    paintingContext.canvas.restore();
  }

  Path getBannerPath({
    required Offset offset,
    required Size contentSize,
  }) {
    final nearDistance = getStartDistance(contentSize);
    final farDistance = getEndDistance(contentSize);

    final relativePath = Path()
      ..moveTo(0, 0)
      ..lineTo(farDistance - nearDistance, 0)
      ..lineTo(farDistance, nearDistance)
      ..lineTo(farDistance, farDistance)
      ..close();

    return relativePath.shift(offset);
  }

  Offset _calculateContentOrigin({
    required Offset paintingOffset,
    required Size contentSize,
  }) {
    Offset relativeOrigin = Offset(
      (getEndDistance(contentSize) - getStartDistance(contentSize)),
      0,
    );

    return relativeOrigin + paintingOffset;
  }

  void positionCanvasToDrawContent({
    required Canvas canvas,
    required Offset offset,
    required Size size,
  }) {
    final contentOrigin = _calculateContentOrigin(
      paintingOffset: offset,
      contentSize: size,
    );

    canvas
      ..translate(contentOrigin.dx, contentOrigin.dy)
      ..rotate(pi / 4);
  }

  double getStartDistance(Size contentSize) =>
      (contentSize.width * sin(-pi / 4)).abs();

  double getEndDistance(Size contentSize) =>
      getStartDistance(contentSize) + (contentSize.height / sin(-pi / 4)).abs();
}
