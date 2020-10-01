import 'package:flutter/widgets.dart';

extension NavigationContext on BuildContext {
  /// Shortcut for `ModalRoute.of(context)`.
  ModalRoute<dynamic> get modalRoute => ModalRoute.of(this);

  /// Shortcut for `Navigator.of(context)`.
  NavigatorState get navigator => Navigator.of(this);

  /// Shortcut for `Navigator.of(context, rootNavigator: true)`.
  NavigatorState get rootNavigator => Navigator.of(this, rootNavigator: true);
}

extension FancyNavigatorState on NavigatorState {
  /// Push the given route onto the navigator, and then remove all the previous
  /// routes.
  Future<T> pushAndRemoveAll<T extends Object>(Route<T> newRoute) =>
      pushAndRemoveUntil(newRoute, (_) => false);

  /// Push the route with the given name onto the navigator, and then remove all
  /// the previous routes.
  Future<T> pushNamedAndRemoveAll<T extends Object>(
    String newRouteName, {
    Object arguments,
  }) =>
      pushNamedAndRemoveUntil(newRouteName, (_) => false, arguments: arguments);
}

typedef MessageLogger = void Function(String message);

/// A [NavigatorObserver] that loggs all navigation events to a [MessageLogger]
/// (defaults to [print]).
class LoggingNavigatorObserver extends NavigatorObserver {
  LoggingNavigatorObserver({
    this.logger = defaultLogger,
  }) : assert(logger != null);

  final MessageLogger logger;

  // ignore: avoid_print
  static void defaultLogger(String message) => print('Navigator: $message');

  @override
  void didPush(Route<dynamic> route, Route<dynamic> previousRoute) => logger(
      'didPush ${routeToString(previousRoute)} → ${routeToString(route)}');

  @override
  void didPop(Route<dynamic> route, Route<dynamic> previousRoute) => logger(
      'didPop ${routeToString(previousRoute)} ← ${routeToString(route)}');

  @override
  void didRemove(Route<dynamic> route, Route<dynamic> previousRoute) => logger(
      'didRemove ${routeToString(previousRoute)} → ${routeToString(route)}');

  @override
  void didReplace({Route<dynamic> newRoute, Route<dynamic> oldRoute}) => logger(
      'didReplace ${routeToString(oldRoute)} → ${routeToString(newRoute)}');

  String routeToString(Route<dynamic> route) => route?.settings?.name;
}
