import 'package:flutter/widgets.dart';
import 'package:material_ui/material_ui.dart';

import '../context.dart';

class const Circle({
  super.key,
  final double? diameter,
  final Color? backgroundColor,
  final EdgeInsetsGeometry padding = EdgeInsets.zero,
  final Widget? child,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final child = Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor ?? context.theme.colorScheme.primary,
      ),
      padding: padding,
      child: this.child,
    );

    return diameter == null
        ? AspectRatio(aspectRatio: 1, child: child)
        : SizedBox(width: diameter, height: diameter, child: child);
  }
}
