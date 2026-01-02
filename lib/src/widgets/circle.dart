import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../context.dart';

class Circle extends StatelessWidget {
  const Circle({
    super.key,
    this.diameter,
    this.backgroundColor,
    this.padding = EdgeInsets.zero,
    this.child,
  });

  final double? diameter;
  final Color? backgroundColor;
  final EdgeInsetsGeometry padding;
  final Widget? child;

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
