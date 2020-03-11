import 'package:flutter/material.dart';

extension FancyContext on BuildContext {
  /// Shortcut for `DefaultTextStyle.of(context)`.
  DefaultTextStyle get defaultTextStyle => DefaultTextStyle.of(this);

  /// Shortcut for `Directionality.of(context)`.
  TextDirection get directionality => Directionality.of(this);

  /// Shortcut for `Form.of(context)`.
  FormState get form => Form.of(this);

  /// Shortcut for `MediaQuery.of(context)`.
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// Shortcut for `Navigator.of(context)`.
  NavigatorState get navigator => Navigator.of(this);

  /// Shortcut for `Navigator.of(context, rootNavigator: true)`.
  NavigatorState get rootNavigator => Navigator.of(this, rootNavigator: true);

  /// Shortcut for `PageStorage.of(context)`.
  PageStorageBucket get pageStorage => PageStorage.of(this);

  /// Shortcut for `Scaffold.of(context)`.
  ScaffoldState get scaffold => Scaffold.of(this);

  /// Shortcut for `Theme.of(context)`.
  ThemeData get theme => Theme.of(this);

  /// Shortcut for `Theme.of(context).textTheme`.
  TextTheme get textTheme => theme.textTheme;
}
