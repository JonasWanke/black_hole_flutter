import 'package:flutter/widgets.dart';

extension NavigationContext on BuildContext {
  /// Shortcut for `ModalRoute.of(context)`.
  ModalRoute get modalRoute => ModalRoute.of(this);

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
    String newRouteName,
    RoutePredicate predicate, {
    Object arguments,
  }) =>
      pushNamedAndRemoveUntil(newRouteName, (_) => false, arguments: arguments);
}
