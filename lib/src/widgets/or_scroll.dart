import 'package:flutter/widgets.dart';

/// Centers [child] if it's smaller than the parent and makes it scrollable
/// along [scrollDirection] if it's taller.
class const CenterOrScroll({
  super.key,
  final bool wrapInSafeArea = true,
  final EdgeInsets padding = EdgeInsets.zero,
  final Axis scrollDirection = Axis.vertical,
  final ScrollController? scrollController,
  required final Widget child,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var child = this.child;

    if (wrapInSafeArea) child = SafeArea(child: child);

    child = SingleChildScrollView(
      padding: padding,
      scrollDirection: scrollDirection,
      controller: scrollController,
      child: child,
    );

    return Center(child: _intrinsicAlongAxis(scrollDirection, child));
  }
}

class const ExpandOrScroll({
  super.key,
  final bool wrapInSafeArea = true,
  final EdgeInsetsGeometry padding = EdgeInsets.zero,
  final Axis scrollDirection = Axis.vertical,
  final ScrollController? scrollController,
  required final Widget child,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var child = this.child;

    if (wrapInSafeArea) child = SafeArea(child: child);

    return LayoutBuilder(
      builder: (context, constraints) => SingleChildScrollView(
        padding: padding,
        scrollDirection: scrollDirection,
        controller: scrollController,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: constraints.maxWidth,
            minHeight: constraints.maxHeight - padding.vertical,
          ),
          child: _intrinsicAlongAxis(scrollDirection, child),
        ),
      ),
    );
  }
}

Widget _intrinsicAlongAxis(Axis axis, Widget child) => switch (axis) {
  .horizontal => IntrinsicWidth(child: child),
  .vertical => IntrinsicHeight(child: child),
};
