import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../context.dart';

/// In addition to a normal [FlatButton], this [Widget] natively supports
/// disabling it and showing a loading state.
class FancyFlatButton extends _FancyButton {
  /// Creates a [FlatButton].
  ///
  /// {@macro black_hole_flutter.buttons.isEnabled}
  ///
  /// [child] and [isLoading] must not be null.
  const FancyFlatButton({
    Key key,
    bool isEnabled,
    @required VoidCallback onPressed,
    @required Widget child,
    bool isLoading = false,
    Widget loadingChild,
    Color textColor,
    Color color,
  }) : super(
          key: key,
          isEnabled: isEnabled,
          onPressed: onPressed,
          child: child,
          isLoading: isLoading,
          loadingChild: loadingChild,
          textColor: textColor,
          color: color,
        );

  /// Creates a [FlatButton] with a leading icon.
  ///
  /// {@macro black_hole_flutter.buttons.isEnabled}
  ///
  /// [child], [icon] and [isLoading] must not be null.
  const FancyFlatButton.icon({
    Key key,
    bool isEnabled,
    @required VoidCallback onPressed,
    @required Widget icon,
    @required Widget label,
    bool isLoading = false,
    Widget loadingLabel,
    Color textColor,
    Color color,
  })  : assert(icon != null),
        super(
          key: key,
          isEnabled: isEnabled,
          onPressed: onPressed,
          icon: icon,
          child: label,
          isLoading: isLoading,
          loadingChild: loadingLabel,
          textColor: textColor,
          color: color,
        );

  @override
  Widget _buildDefault(BuildContext context) {
    return FlatButton(
      onPressed: actualOnPressed,
      textColor: textColor,
      color: color,
      child: child,
    );
  }

  @override
  Widget _buildIcon(BuildContext context, Widget icon) {
    return FlatButton.icon(
      onPressed: actualOnPressed,
      textColor: textColor,
      color: color,
      icon: icon,
      label: actualChild,
    );
  }
}

/// In addition to a normal [OutlineButton], this [Widget] natively supports
/// disabling it and showing a loading state.
class FancyOutlineButton extends _FancyButton {
  /// Creates an [OutlineButton].
  ///
  /// {@macro black_hole_flutter.buttons.isEnabled}
  ///
  /// [child] and [isLoading] must not be null.
  const FancyOutlineButton({
    Key key,
    bool isEnabled,
    @required VoidCallback onPressed,
    @required Widget child,
    bool isLoading = false,
    Widget loadingChild,
    Color textColor,
    Color color,
    this.borderSide,
    this.highlightedBorderColor,
  }) : super(
          key: key,
          isEnabled: isEnabled,
          onPressed: onPressed,
          child: child,
          isLoading: isLoading,
          loadingChild: loadingChild,
          textColor: textColor,
          color: color,
        );

  /// Creates an [OutlineButton] with a leading icon.
  ///
  /// {@macro black_hole_flutter.buttons.isEnabled}
  ///
  /// [child], [icon] and [isLoading] must not be null.
  const FancyOutlineButton.icon({
    Key key,
    bool isEnabled,
    @required VoidCallback onPressed,
    @required Widget icon,
    @required Widget label,
    bool isLoading = false,
    Widget loadingLabel,
    Color textColor,
    Color color,
    this.borderSide,
    this.highlightedBorderColor,
  })  : assert(icon != null),
        super(
          key: key,
          isEnabled: isEnabled,
          onPressed: onPressed,
          icon: icon,
          child: label,
          isLoading: isLoading,
          loadingChild: loadingLabel,
          textColor: textColor,
          color: color,
        );

  final BorderSide borderSide;
  final Color highlightedBorderColor;

  @override
  Widget _buildDefault(BuildContext context) {
    return OutlineButton(
      onPressed: actualOnPressed,
      textColor: textColor,
      color: color,
      borderSide: borderSide,
      highlightedBorderColor: highlightedBorderColor,
      child: child,
    );
  }

  @override
  Widget _buildIcon(BuildContext context, Widget icon) {
    return OutlineButton.icon(
      onPressed: actualOnPressed,
      textColor: textColor,
      color: color,
      borderSide: borderSide,
      highlightedBorderColor: highlightedBorderColor,
      icon: icon,
      label: actualChild,
    );
  }
}

/// In addition to a normal [RaisedButton], this [Widget] natively supports
/// disabling it and showing a loading state.
class FancyRaisedButton extends _FancyButton {
  /// Creates a [RaisedButton].
  ///
  /// {@macro black_hole_flutter.buttons.isEnabled}
  ///
  /// [child] and [isLoading] must not be null.
  const FancyRaisedButton({
    Key key,
    bool isEnabled,
    @required VoidCallback onPressed,
    @required Widget child,
    bool isLoading = false,
    Widget loadingChild,
    Color textColor,
    Color color,
  }) : super(
          key: key,
          isEnabled: isEnabled,
          onPressed: onPressed,
          child: child,
          isLoading: isLoading,
          loadingChild: loadingChild,
          textColor: textColor,
          color: color,
        );

  /// Creates a [RaisedButton] with a leading icon.
  ///
  /// {@macro black_hole_flutter.buttons.isEnabled}
  ///
  /// [child], [icon] and [isLoading] must not be null.
  const FancyRaisedButton.icon({
    Key key,
    bool isEnabled,
    @required VoidCallback onPressed,
    @required Widget icon,
    @required Widget label,
    bool isLoading = false,
    Widget loadingLabel,
    Color textColor,
    Color color,
  })  : assert(icon != null),
        super(
          key: key,
          isEnabled: isEnabled,
          onPressed: onPressed,
          icon: icon,
          child: label,
          isLoading: isLoading,
          loadingChild: loadingLabel,
          textColor: textColor,
          color: color,
        );

  @override
  Widget _buildDefault(BuildContext context) {
    return RaisedButton(
      onPressed: actualOnPressed,
      textColor: textColor,
      color: color,
      child: child,
    );
  }

  @override
  Widget _buildIcon(BuildContext context, Widget icon) {
    return RaisedButton.icon(
      onPressed: actualOnPressed,
      textColor: textColor,
      color: color,
      icon: icon,
      label: actualChild,
    );
  }
}

/// In addition to a normal [FloatingActionButton], this [Widget] natively
/// supports disabling it and showing a loading state.
class FancyFab extends _FancyButton {
  /// Creates a circular [FloatingActionButton].
  ///
  /// {@macro black_hole_flutter.buttons.isEnabled}
  ///
  /// [child] and [isLoading] must not be null.
  const FancyFab({
    Key key,
    bool isEnabled,
    @required VoidCallback onPressed,
    @required Widget child,
    bool isLoading = false,
    Widget loadingLabel,
    Color color,
  }) : super(
          key: key,
          isEnabled: isEnabled,
          onPressed: onPressed,
          child: child,
          isLoading: isLoading,
          loadingChild: loadingLabel,
          color: color,
        );

  /// Creates an extended [FloatingActionButton].
  ///
  /// {@macro black_hole_flutter.buttons.isEnabled}
  ///
  /// [icon], [child] and [isLoading] must not be null.
  const FancyFab.extended({
    Key key,
    bool isEnabled,
    @required VoidCallback onPressed,
    @required Widget icon,
    @required Widget label,
    bool isLoading = false,
    Widget loadingLabel,
    Color backgroundColor,
  })  : assert(icon != null),
        super(
          key: key,
          isEnabled: isEnabled,
          onPressed: onPressed,
          icon: icon,
          child: label,
          isLoading: isLoading,
          loadingChild: loadingLabel,
          color: backgroundColor,
        );

  @override
  double get loadingIndicatorSize => 24;

  @override
  Widget _buildDefault(BuildContext context) {
    return FloatingActionButton(
      onPressed: actualOnPressed,
      foregroundColor: _foregroundColor(context),
      backgroundColor: _backgroundColor(context),
      child: isLoading ? _LoadingIndicator(loadingIndicatorSize) : child,
    );
  }

  @override
  Widget _buildIcon(BuildContext context, Widget icon) {
    if (isLoading && this.icon == null && loadingChild == null) {
      // While loading a default FAB, we don't want a loading indicator next to
      // the icon if no loadingChild is set.
      return _buildDefault(context);
    }

    return FloatingActionButton.extended(
      onPressed: actualOnPressed,
      foregroundColor: _foregroundColor(context),
      backgroundColor: _backgroundColor(context),
      icon: icon,
      label: actualChild,
    );
  }

  Color _foregroundColor(BuildContext context) {
    if (isActuallyEnabled) {
      return null;
    }
    return context.theme.disabledColor;
  }

  Color _backgroundColor(BuildContext context) {
    if (isActuallyEnabled) {
      return color;
    }
    return Color.alphaBlend(
      context.theme.disabledColor,
      context.theme.scaffoldBackgroundColor,
    );
  }
}

abstract class _FancyButton extends StatelessWidget {
  /// {@template black_hole_flutter.buttons.isEnabled}
  /// Use [isEnabled] to avoid ternary statements for [onPressed] — you can
  /// disable the button with:
  /// - `isEnabled: false` or
  /// - `onPressed: null`
  /// {@endtemplate}
  const _FancyButton({
    Key key,
    this.isEnabled,
    @required this.onPressed,
    this.isLoading = false,
    this.loadingChild,
    this.textColor,
    this.color,
    this.icon,
    @required this.child,
  })  : assert(!(isEnabled == true && onPressed == null),
            'When explicitly setting isEnabled to true, onPressed must not be null'),
        assert(isLoading != null),
        assert(child != null),
        super(key: key);

  final bool isEnabled;
  bool get isActuallyEnabled => (isEnabled ?? onPressed != null) && !isLoading;

  final VoidCallback onPressed;
  VoidCallback get actualOnPressed => isActuallyEnabled ? onPressed : null;

  final bool isLoading;

  final Widget loadingChild;
  Widget get actualLoadingChild => loadingChild ?? child;

  @visibleForOverriding
  double get loadingIndicatorSize => 18;

  final Color textColor;
  final Color color;

  final Widget icon;
  final Widget child;
  Widget get actualChild => isLoading ? actualLoadingChild : child;

  @override
  @nonVirtual
  Widget build(BuildContext context) {
    if (isLoading) {
      return _buildIcon(context, _LoadingIndicator(loadingIndicatorSize));
    }
    if (icon != null) {
      return _buildIcon(context, icon);
    }
    return _buildDefault(context);
  }

  @visibleForOverriding
  Widget _buildDefault(BuildContext context);
  @visibleForOverriding
  Widget _buildIcon(BuildContext context, Widget icon);
}

class _LoadingIndicator extends StatelessWidget {
  const _LoadingIndicator(this.size) : assert(size != null);

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CircularProgressIndicator(strokeWidth: 2),
    );
  }
}
