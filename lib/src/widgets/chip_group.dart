import 'package:flutter/material.dart';

import '../context.dart';

/// Wraps multiple [Chip]s and can optionally show a [title] above these.
class ChipGroup extends StatelessWidget {
  const ChipGroup({
    Key key,
    this.title,
    @required this.children,
  })  : assert(children != null),
        super(key: key);

  /// An optional [Widget] that is displayed above the [children] if there are
  /// any.
  final Widget title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    Widget child = Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      children: children,
    );

    if (title != null && children.isNotEmpty) {
      child = Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          DefaultTextStyle(
            style: context.textTheme.overline,
            child: title,
          ),
          child,
        ],
      );
    }

    return child;
  }
}
