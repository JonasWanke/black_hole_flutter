import 'package:flutter/material.dart';
import 'package:dartx/dartx.dart';

import '../context.dart';

/// A container wrapping multiple buttons with an interpunct (·) between each
/// one. It's recommended to use [FlatButton]s as children.
class SeparatedButtons extends StatelessWidget {
  const SeparatedButtons({
    Key key,
    @required this.children,
  })  : assert(children != null),
        // Iterable.isEmpty isn't const…
        // ignore: prefer_is_empty
        assert(children.length > 0),
        super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: <Widget>[
        for (final child in children.dropLast(1)) ...[
          child,
          Text('⋅', style: context.theme.textTheme.headline5),
        ],
        children.last,
      ],
    );
  }
}
