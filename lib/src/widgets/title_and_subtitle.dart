import 'package:flutter/material.dart';
import 'package:black_hole_flutter/black_hole_flutter.dart';

/// Shows a title and a subtitle in a [Column].
///
/// It's recommended to use this widget inside an [AppBar].
class TitleAndSubtitle extends StatelessWidget {
  const TitleAndSubtitle({
    @required this.title,
    this.subtitle,
  }) : assert(title != null);

  /// See [AppBar.title].
  final Widget title;

  /// A widget displayed below the title.
  ///
  /// Typically a [Text] widget.
  final Widget subtitle;

  @override
  Widget build(BuildContext context) {
    if (subtitle == null) {
      return title;
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        title,
        DefaultTextStyle.merge(
          style: context.textTheme.subtitle,
          child: subtitle,
        ),
      ],
    );
  }
}
