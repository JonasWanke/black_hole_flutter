import 'package:flutter/material.dart';

import '../context.dart';

/// A container wrapping multiple buttons with an interpunct (·) between each
/// one. It's recommended to use [TextButton]s as children.
class SeparatedButtons extends StatelessWidget {
  const SeparatedButtons({
    Key? key,
    this.textStyle,
    required this.children,
  })  : assert(children.length > 0),
        super(key: key);

  final TextStyle? textStyle;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        children.first,
        for (final child in children.skip(1)) ...[
          Text('⋅', style: textStyle ?? context.theme.textTheme.headlineSmall),
          child,
        ],
      ],
    );
  }
}
