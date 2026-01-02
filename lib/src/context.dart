import 'package:flutter/material.dart';

extension FancyContext on BuildContext {
  /// Shortcut for `DefaultTextStyle.of(context)`.
  DefaultTextStyle get defaultTextStyle => DefaultTextStyle.of(this);

  /// Shortcut for `Directionality.of(context)`.
  TextDirection get directionality => Directionality.of(this);

  /// Shortcut for `FocusScope.of(context)`.
  FocusScopeNode get focusScope => FocusScope.of(this);

  /// Shortcut for `Form.of(context)`.
  FormState? get form => Form.of(this);

  /// Shortcut for `Localizations.localeOf(context)`.
  Locale get locale => Localizations.localeOf(this);

  /// Shortcut for `MaterialLocalizations.of(context)`.
  MaterialLocalizations get materialLocalizations =>
      MaterialLocalizations.of(this);

  /// Shortcut for `MediaQuery.of(context)`.
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// Shortcut for `Overlay.of(context)`.
  OverlayState? get overlay => Overlay.of(this);

  /// Shortcut for `PageStorage.of(context)`.
  PageStorageBucket? get pageStorage => PageStorage.of(this);

  /// Shortcut for `Scaffold.of(context)`.
  ScaffoldState get scaffold => Scaffold.of(this);

  /// Shortcut for `Scaffold.maybeOf(context)`.
  ScaffoldState? get scaffoldOrNull => Scaffold.maybeOf(this);

  /// Shortcut for `ScaffoldMessenger.of(context)`.
  ScaffoldMessengerState get scaffoldMessenger => ScaffoldMessenger.of(this);

  /// Shortcut for `ScaffoldMessenger.maybeOf(context)`.
  ScaffoldMessengerState? get scaffoldMessengerOrNull =>
      ScaffoldMessenger.maybeOf(this);

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSimpleSnackBar(
    String content, {
    SnackBarAction? action,
  }) => scaffoldMessenger.showSimpleSnackBar(content, action: action);
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
    SnackBar snackBar,
  ) => scaffoldMessenger.showSnackBar(snackBar);

  /// Shortcut for `Theme.of(context)`.
  ThemeData get theme => Theme.of(this);

  /// Shortcut for `Theme.of(context).colorScheme`.
  ColorScheme get colorScheme => ColorScheme.of(this);

  /// Shortcut for `Theme.of(context).textTheme`.
  TextTheme get textTheme => TextTheme.of(this);
}

extension FancyScaffoldMessenger on ScaffoldMessengerState {
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSimpleSnackBar(
    String content, {
    SnackBarAction? action,
  }) => showSnackBar(SnackBar(content: Text(content), action: action));
}
