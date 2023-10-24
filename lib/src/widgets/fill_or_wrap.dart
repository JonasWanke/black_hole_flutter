import 'dart:math' as math;

import 'package:collection/collection.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../render_object.dart';

/// A layout with two different behaviors:
///
/// By default, all [children] are positioned **next to each other with equal
/// widths**. This is comparable to a [Row] with all [children] wrapped in
/// [Expanded].
///
/// If the [children] are too wide to fit in a single line, or one child would
/// become smaller than its reported minimum width, the [children] get
/// positioned **below each other** ("wrapped"). This is similar to a [Column]
/// with [MainAxisSize.min].
class FillOrWrap extends MultiChildRenderObjectWidget {
  const FillOrWrap({
    super.key,
    this.spacing = 0,
    this.wrappedSpacing = 0,
    required super.children,
  });

  /// How much space to place between children when not wrapping.
  final double spacing;

  /// How much space to place between children when wrapping.
  final double wrappedSpacing;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _FillOrWrapLayout(
      spacing: spacing,
      wrappedSpacing: wrappedSpacing,
    );
  }

  @override
  void updateRenderObject(
    BuildContext context,
    covariant RenderObject renderObject,
  ) {
    (renderObject as _FillOrWrapLayout)
      ..spacing = spacing
      ..wrappedSpacing = wrappedSpacing;
  }
}

class _FillOrWrapParentData extends ContainerBoxParentData<RenderBox> {}

class _FillOrWrapLayout extends RenderBox
    with
        ContainerRenderObjectMixin<RenderBox, _FillOrWrapParentData>,
        RenderBoxContainerDefaultsMixin<RenderBox, _FillOrWrapParentData> {
  _FillOrWrapLayout({
    double spacing = 0,
    double wrappedSpacing = 0,
  })  : _spacing = spacing,
        _wrappedSpacing = wrappedSpacing;

  double _spacing;
  double get spacing => _spacing;
  set spacing(double value) {
    if (_spacing == value) {
      return;
    }

    _spacing = value;
    markNeedsLayout();
  }

  double _wrappedSpacing;
  double get wrappedSpacing => _wrappedSpacing;
  set wrappedSpacing(double value) {
    if (_wrappedSpacing == value) {
      return;
    }

    _wrappedSpacing = value;
    markNeedsLayout();
  }

  int get _spacingCount => math.max(childCount - 1, 0);

  @override
  void setupParentData(RenderObject child) {
    if (child.parentData is! _FillOrWrapParentData) {
      child.parentData = _FillOrWrapParentData();
    }
  }

  @override
  double computeMinIntrinsicWidth(double height) {
    return children
            .map((c) => c.getMinIntrinsicWidth(double.infinity))
            .maxOrNull ??
        0;
  }

  @override
  double computeMaxIntrinsicWidth(double height) =>
      children.map((c) => c.getMaxIntrinsicWidth(double.infinity)).sum;

  @override
  double computeMinIntrinsicHeight(double width) =>
      _computeIntrinsicHeightForWidth(width);
  @override
  double computeMaxIntrinsicHeight(double width) =>
      _computeIntrinsicHeightForWidth(width);

  double _computeIntrinsicHeightForWidth(double width) {
    var singleLineWidth = 0.0;
    var singleLineHeight = 0.0;
    var multiLineHeight = 0.0;
    for (final child in children) {
      final width = child.getMaxIntrinsicWidth(double.infinity);
      singleLineWidth += width;

      final height = child.getMaxIntrinsicHeight(width);
      singleLineHeight = math.max(singleLineHeight, height);
      multiLineHeight += height;
    }
    return singleLineWidth <= width
        ? singleLineHeight
        : multiLineHeight + _spacingCount * wrappedSpacing;
  }

  bool _hasOverflow = false;
  @override
  void performLayout() {
    assert(!sizedByParent);

    var childWidth = 0.0;
    final childConstraints = BoxConstraints(maxWidth: constraints.maxWidth);
    for (final child in children) {
      child.layout(childConstraints, parentUsesSize: true);
      childWidth = math.max(childWidth, child.size.width);
    }
    final width = childCount * childWidth + _spacingCount * spacing;

    if (width <= constraints.maxWidth) {
      // Children fit into a single line.
      var height = 0.0;
      final childWidth =
          (constraints.maxWidth - _spacingCount * spacing) / childCount;
      final childConstraints =
          constraints.heightConstraints().tighten(width: childWidth);

      for (final child in children) {
        child.layout(childConstraints, parentUsesSize: true);
        height = math.max(height, child.size.height);
      }
      size = Size(constraints.maxWidth, height);

      children.forEachIndexed((index, child) {
        (child.parentData! as _FillOrWrapParentData).offset = Offset(
          index * (childWidth + spacing),
          (size.height - child.size.height) / 2,
        );
      });
      _hasOverflow = false;
    } else {
      // Children don't fit into a single line.
      var width = 0.0;
      var height = 0.0;
      for (final child in children) {
        child.layout(constraints.widthConstraints(), parentUsesSize: true);
        width = math.max(width, child.size.width);
        height += child.size.height;
      }
      size = Size(width, height + _spacingCount * wrappedSpacing);

      var y = 0.0;
      for (final child in children) {
        (child.parentData! as _FillOrWrapParentData).offset =
            Offset((size.width - child.size.width) / 2, y);
        y += child.size.height + wrappedSpacing;
      }
      _hasOverflow = y > size.height;
    }
  }

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) =>
      defaultHitTestChildren(result, position: position);

  @override
  void paint(PaintingContext context, Offset offset) {
    if (!_hasOverflow) {
      defaultPaint(context, offset);
      return;
    }

    if (size.width <= 0) return;

    context.pushClipRect(
      needsCompositing,
      offset,
      Offset.zero & size,
      defaultPaint,
    );
  }
}
