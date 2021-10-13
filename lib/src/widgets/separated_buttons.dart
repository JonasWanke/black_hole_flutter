import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

import '../context.dart';

/// A container wrapping multiple buttons with an interpunct (·) between each
/// one. It's recommended to use [TextButton]s as children.
class SeparatedButtons extends StatelessWidget {
  const SeparatedButtons({Key? key, required this.children})
      : assert(children.length > 0),
        super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: <Widget>[
        for (final child in children.withoutLast()) ...[
          child,
          Text('⋅', style: context.theme.textTheme.button),
        ],
        children.last,
      ],
    );
  }
}
