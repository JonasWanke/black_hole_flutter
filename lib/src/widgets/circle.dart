import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../context.dart';

class Circle extends StatelessWidget {
  const Circle({
    super.key,
    required this.diameter,
    this.backgroundColor,
    this.padding = EdgeInsets.zero,
    this.child,
  });

  final double diameter;
  final Color? backgroundColor;
  final EdgeInsetsGeometry padding;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: diameter,
      height: diameter,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor ?? context.theme.colorScheme.primary,
      ),
      padding: padding,
      child: child,
    );
  }
}
