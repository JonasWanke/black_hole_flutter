import 'package:flutter/widgets.dart';

class ExpandOrScroll extends StatelessWidget {
  const ExpandOrScroll({
    super.key,
    this.wrapInSafeArea = true,
    this.padding = EdgeInsets.zero,
    this.scrollDirection = Axis.vertical,
    this.scrollController,
    required this.child,
  });

  final bool wrapInSafeArea;
  final EdgeInsetsGeometry padding;
  final Axis scrollDirection;
  final ScrollController? scrollController;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    var child = this.child;

    if (wrapInSafeArea) child = SafeArea(child: child);

    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
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
      );
    });
  }
}

Widget _intrinsicAlongAxis(Axis axis, Widget child) {
  switch (axis) {
    case Axis.horizontal:
      return IntrinsicWidth(child: child);
    case Axis.vertical:
      return IntrinsicHeight(child: child);
  }
}
