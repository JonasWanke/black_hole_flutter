import 'package:collection/collection.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../render_object.dart';

enum _LeftCenterRightSlot { left, center, right }

class LeftCenterRight extends MultiChildRenderObjectWidget {
  LeftCenterRight({
    Widget? left,
    Widget? center,
    Widget? right,
  }) : super(
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

  @override
  RenderObject createRenderObject(BuildContext context) =>
      _RenderLeftCenterRight();
  @override
  void updateRenderObject(
    BuildContext context,
    covariant RenderObject renderObject,
  ) {}
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
  @override
  void setupParentData(RenderBox child) {
    if (child.parentData is! _LeftCenterRightParentData) {
      child.parentData = _LeftCenterRightParentData();
    }
  }

  @override
  double computeMinIntrinsicWidth(double height) {
    assert(_debugThrowIfNotCheckingIntrinsics());
    return 0;
  }

  @override
  double computeMaxIntrinsicWidth(double height) {
    assert(_debugThrowIfNotCheckingIntrinsics());
    return 0;
  }

  bool _debugThrowIfNotCheckingIntrinsics() {
    assert(() {
      if (!RenderObject.debugCheckingIntrinsics) {
        throw Exception("$runtimeType doesn't have an intrinsic width.");
      }
      return true;
    }());
    return true;
  }

  @override
  double computeMinIntrinsicHeight(double width) =>
      children.map((it) => it.getMinIntrinsicHeight(width)).maxOrNull ?? 0;
  @override
  double computeMaxIntrinsicHeight(double width) =>
      children.map((it) => it.getMinIntrinsicHeight(width)).maxOrNull ?? 0;

  static const _middleSpacing = 16.0;

  Map<_LeftCenterRightSlot, RenderBox> _createChildrenMap() {
    return {
      for (final child in children) child.data.slot!: child,
    };
  }

  @override
  Size computeDryLayout(BoxConstraints constraints) {
    final height = _computeHeight(
      constraints,
      _createChildrenMap(),
      computeForChild: (child, constraints) =>
          child.computeDryLayout(constraints),
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
    final height = _computeHeight(
      constraints,
      childrenMap,
      computeForChild: (child, constraints) {
        child.layout(constraints, parentUsesSize: true);
        return child.size;
      },
    );

    size = Size(constraints.maxWidth, height);
    var left = 0.0;
    var right = size.width;

    final leftChild = childrenMap[_LeftCenterRightSlot.left];
    if (leftChild != null) {
      leftChild.data.offset =
          Offset(left, (size.height - leftChild.size.height) / 2);
      left += leftChild.size.width + _middleSpacing;
    }

    final rightChild = childrenMap[_LeftCenterRightSlot.right];
    if (rightChild != null) {
      rightChild.data.offset = Offset(
        right - rightChild.size.width,
        (size.height - rightChild.size.height) / 2,
      );
      right -= _middleSpacing + rightChild.size.width;
    }

    final centerChild = childrenMap[_LeftCenterRightSlot.center];
    if (centerChild != null) {
      centerChild.data.offset = Offset(
        ((size.width - centerChild.size.width) / 2)
            .clamp(left, right - centerChild.size.width),
        (size.height - centerChild.size.height) / 2,
      );
    }
  }

  double _computeHeight(
    BoxConstraints constraints,
    Map<_LeftCenterRightSlot, RenderBox> childrenMap, {
    required Size Function(RenderBox child, BoxConstraints constraints)
        computeForChild,
  }) {
    var remainingConstraints = constraints;

    final left = childrenMap[_LeftCenterRightSlot.left];
    final leftSize =
        left == null ? null : computeForChild(left, remainingConstraints);
    if (leftSize != null) {
      remainingConstraints = constraints
          .deflate(EdgeInsets.only(left: leftSize.width + _middleSpacing));
    }

    final right = childrenMap[_LeftCenterRightSlot.right];
    final rightSize =
        right == null ? null : computeForChild(right, remainingConstraints);
    if (rightSize != null) {
      remainingConstraints = constraints
          .deflate(EdgeInsets.only(right: _middleSpacing + rightSize.width));
    }

    final center = childrenMap[_LeftCenterRightSlot.center];
    final centerSize =
        center == null ? null : computeForChild(center, remainingConstraints);

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
