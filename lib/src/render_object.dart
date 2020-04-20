import 'package:flutter/rendering.dart';

extension ContainerRenderObjectMixinBlackHole<ChildType extends RenderObject,
        ParentDataType extends ContainerParentDataMixin<ChildType>>
    on ContainerRenderObjectMixin<ChildType, ParentDataType> {
  /// Returns all children using [firstChild] and [childAfter].
  Iterable<ChildType> get children sync* {
    var child = firstChild;
    while (child != null) {
      yield child;
      child = childAfter(child);
    }
  }
}
