import 'dart:math' as math;

import 'package:collection/collection.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../render_object.dart';

enum _LeftCenterRightSlot { left, center, right }

class LeftCenterRight extends MultiChildRenderObjectWidget {
  LeftCenterRight({
    super.key,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textBaseline,
    Widget? left,
    Widget? center,
    Widget? right,
  })  : assert(
          crossAxisAlignment != CrossAxisAlignment.baseline ||
              textBaseline != null,
          '`textBaseline` is required if `crossAxisAlignment == CrossAxisAlignment.baseline`',
        ),
        super(
          children: [
            if (left != null)
              _LeftCenterRightParentDataWidget(
                _LeftCenterRightSlot.left,
                child: left,
              ),
            if (center != null)
              _LeftCenterRightParentDataWidget(
                _LeftCenterRightSlot.center,
                child: center,
              ),
            if (right != null)
              _LeftCenterRightParentDataWidget(
                _LeftCenterRightSlot.right,
                child: right,
              ),
          ],
        );

  final CrossAxisAlignment crossAxisAlignment;
  final TextBaseline? textBaseline;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _RenderLeftCenterRight(
      crossAxisAlignment: crossAxisAlignment,
      textBaseline: textBaseline,
    );
  }

  @override
  void updateRenderObject(
    BuildContext context,
    covariant RenderObject renderObject,
  ) {
    renderObject as _RenderLeftCenterRight;
    renderObject
      ..crossAxisAlignment = crossAxisAlignment
      ..textBaseline = textBaseline;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(EnumProperty('crossAxisAlignment', crossAxisAlignment))
      ..add(EnumProperty('textBaseline', textBaseline, defaultValue: null));
  }
}

class _LeftCenterRightParentData extends ContainerBoxParentData<RenderBox> {
  _LeftCenterRightSlot? slot;
}

class _LeftCenterRightParentDataWidget
    extends ParentDataWidget<_LeftCenterRightParentData> {
  const _LeftCenterRightParentDataWidget(this.slot, {required super.child});

  final _LeftCenterRightSlot slot;

  @override
  Type get debugTypicalAncestorWidgetClass => LeftCenterRight;

  @override
  void applyParentData(RenderObject renderObject) {
    assert(renderObject.parentData is _LeftCenterRightParentData);
    final parentData = renderObject.data;

    if (parentData.slot == slot) return;

    parentData.slot = slot;
    final targetParent = renderObject.parent;
    if (targetParent is RenderObject) targetParent.markNeedsLayout();
  }
}

class _RenderLeftCenterRight extends RenderBox
    with
        ContainerRenderObjectMixin<RenderBox, _LeftCenterRightParentData>,
        RenderBoxContainerDefaultsMixin<RenderBox, _LeftCenterRightParentData> {
  _RenderLeftCenterRight({
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextBaseline? textBaseline,
  })  : _crossAxisAlignment = crossAxisAlignment,
        _textBaseline = textBaseline;

  CrossAxisAlignment get crossAxisAlignment => _crossAxisAlignment;
  CrossAxisAlignment _crossAxisAlignment;
  set crossAxisAlignment(CrossAxisAlignment value) {
    if (_crossAxisAlignment != value) {
      _crossAxisAlignment = value;
      markNeedsLayout();
    }
  }

  TextBaseline? get textBaseline => _textBaseline;
  TextBaseline? _textBaseline;
  set textBaseline(TextBaseline? value) {
    assert(_crossAxisAlignment != CrossAxisAlignment.baseline || value != null);
    if (_textBaseline != value) {
      _textBaseline = value;
      markNeedsLayout();
    }
  }

  @override
  void setupParentData(RenderBox child) {
    if (child.parentData is! _LeftCenterRightParentData) {
      child.parentData = _LeftCenterRightParentData();
    }
  }

  @override
  double computeMinIntrinsicWidth(double height) {
    return _getIntrinsicSize(
      Axis.horizontal,
      extent: height,
      childSize: (child, extent) => child.getMinIntrinsicWidth(extent),
    );
  }

  @override
  double computeMaxIntrinsicWidth(double height) {
    return _getIntrinsicSize(
      Axis.horizontal,
      extent: height,
      childSize: (child, extent) => child.getMaxIntrinsicWidth(extent),
    );
  }

  @override
  double computeMinIntrinsicHeight(double width) {
    return _getIntrinsicSize(
      Axis.vertical,
      extent: width,
      childSize: (child, extent) => child.getMinIntrinsicHeight(extent),
    );
  }

  @override
  double computeMaxIntrinsicHeight(double width) {
    return _getIntrinsicSize(
      Axis.vertical,
      extent: width,
      childSize: (child, extent) => child.getMaxIntrinsicHeight(extent),
    );
  }

  bool get _canComputeIntrinsics =>
      crossAxisAlignment != CrossAxisAlignment.baseline;
  // Simplified from [RenderFlex]
  double _getIntrinsicSize(
    Axis sizingDirection, {
    required double extent,
    required double Function(RenderBox child, double extent) childSize,
  }) {
    if (!_canComputeIntrinsics) {
      // Intrinsics cannot be calculated without a full layout for baseline
      // alignment. Throw an assertion and return 0 as documented on
      // [RenderBox.computeMinIntrinsicWidth].
      assert(
        RenderObject.debugCheckingIntrinsics,
        'Intrinsics are not available for CrossAxisAlignment.baseline.',
      );
      return 0;
    }

    switch (sizingDirection) {
      case Axis.horizontal:
        return children.map((it) => childSize(it, extent)).sum;
      case Axis.vertical:
        // Intrinsic cross size is the max of the intrinsic cross sizes of the
        // children, with the children sized using their max intrinsic
        // dimensions.

        return children
                .map(
                  (it) =>
                      childSize(it, it.getMaxIntrinsicWidth(double.infinity)),
                )
                .maxOrNull ??
            0;
    }
  }

  Map<_LeftCenterRightSlot, RenderBox> _createChildrenMap() {
    return {
      for (final child in children) child.data.slot!: child,
    };
  }

  @override
  Size computeDryLayout(BoxConstraints constraints) {
    if (!_canComputeIntrinsics) {
      assert(debugCannotComputeDryLayout(
        reason:
            'Dry layout cannot be computed for `CrossAxisAlignment.baseline`, which requires a full layout.',
      ));
      return Size.zero;
    }

    final height = _computeHeight(
      constraints,
      _createChildrenMap(),
      layoutChild: ChildLayoutHelper.dryLayoutChild,
    );
    return constraints.constrain(Size.fromHeight(height));
  }

  @override
  void performLayout() {
    assert(!sizedByParent);

    if (children.isEmpty) {
      size = Size(constraints.maxWidth, 0);
      return;
    }

    final childrenMap = _createChildrenMap();
    var height = _computeHeight(
      constraints,
      childrenMap,
      layoutChild: ChildLayoutHelper.layoutChild,
    );

    var maxBaselineDistance = 0.0;
    if (crossAxisAlignment == CrossAxisAlignment.baseline) {
      var maxSizeAboveBaseline = 0.0;
      var maxSizeBelowBaseline = 0.0;
      for (final child in children) {
        final distance =
            child.getDistanceToBaseline(textBaseline!, onlyReal: true);
        if (distance != null) {
          maxBaselineDistance = math.max(maxBaselineDistance, distance);
          maxSizeAboveBaseline = math.max(
            distance,
            maxSizeAboveBaseline,
          );
          maxSizeBelowBaseline = math.max(
            child.size.height - distance,
            maxSizeBelowBaseline,
          );
          height =
              math.max(maxSizeAboveBaseline + maxSizeBelowBaseline, height);
        }
      }
    }

    size = constraints.constrain(Size.fromHeight(height));

    double computeY(RenderBox child) {
      switch (_crossAxisAlignment) {
        case CrossAxisAlignment.start:
          return 0;
        case CrossAxisAlignment.end:
          return size.height - child.size.height;
        case CrossAxisAlignment.center:
          return (size.height - child.size.height) / 2;
        case CrossAxisAlignment.stretch:
          return 0;
        case CrossAxisAlignment.baseline:
          final distance =
              child.getDistanceToBaseline(textBaseline!, onlyReal: true);
          return distance == null ? 0 : maxBaselineDistance - distance;
      }
    }

    var left = 0.0;
    var right = size.width;

    final leftChild = childrenMap[_LeftCenterRightSlot.left];
    if (leftChild != null) {
      leftChild.data.offset = Offset(left, computeY(leftChild));
      left += leftChild.size.width;
    }

    final rightChild = childrenMap[_LeftCenterRightSlot.right];
    if (rightChild != null) {
      rightChild.data.offset =
          Offset(right - rightChild.size.width, computeY(rightChild));
      right -= rightChild.size.width;
    }

    final centerChild = childrenMap[_LeftCenterRightSlot.center];
    if (centerChild != null) {
      centerChild.data.offset = Offset(
        // This is where the magic happend:
        ((size.width - centerChild.size.width) / 2)
            .clamp(left, right - centerChild.size.width),
        computeY(centerChild),
      );
    }
  }

  double _computeHeight(
    BoxConstraints constraints,
    Map<_LeftCenterRightSlot, RenderBox> childrenMap, {
    required ChildLayouter layoutChild,
  }) {
    var remainingConstraints = constraints;

    final left = childrenMap[_LeftCenterRightSlot.left];
    final leftSize =
        left == null ? null : layoutChild(left, remainingConstraints);
    if (leftSize != null) {
      remainingConstraints =
          constraints.deflate(EdgeInsets.only(left: leftSize.width));
    }

    final right = childrenMap[_LeftCenterRightSlot.right];
    final rightSize =
        right == null ? null : layoutChild(right, remainingConstraints);
    if (rightSize != null) {
      remainingConstraints =
          constraints.deflate(EdgeInsets.only(right: rightSize.width));
    }

    final center = childrenMap[_LeftCenterRightSlot.center];
    final centerSize =
        center == null ? null : layoutChild(center, remainingConstraints);

    return [leftSize, centerSize, rightSize]
            .whereNotNull()
            .map((it) => it.height)
            .maxOrNull ??
        0;
  }

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) =>
      defaultHitTestChildren(result, position: position);

  @override
  void paint(PaintingContext context, Offset offset) =>
      defaultPaint(context, offset);
}

extension _ParentData on RenderObject {
  _LeftCenterRightParentData get data =>
      parentData! as _LeftCenterRightParentData;
}
