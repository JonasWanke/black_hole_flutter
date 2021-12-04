import 'package:flutter/widgets.dart';

class ExpandOrScroll extends StatelessWidget {
  const ExpandOrScroll({
    this.padding = EdgeInsets.zero,
    this.wrapInSafeArea = true,
    this.scrollController,
    required this.child,
  });

  final EdgeInsetsGeometry padding;
  final bool wrapInSafeArea;
  final ScrollController? scrollController;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    var child = this.child;
    if (wrapInSafeArea) child = SafeArea(child: child);

    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          controller: scrollController,
          padding: padding,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: constraints.maxWidth,
              minHeight: constraints.maxHeight - padding.vertical,
            ),
            child: IntrinsicHeight(child: child),
          ),
        );
      },
    );
  }
}
