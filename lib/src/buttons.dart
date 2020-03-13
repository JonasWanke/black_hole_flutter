import 'package:flutter/material.dart';

import 'color_material.dart';
import 'context.dart';

/// In addition to a normal [FlatButton], this [Widget] natively supports
/// disabling it and showing a loading state.
class FancyFlatButton extends StatelessWidget {
  /// Creates a [FlatButton].
  ///
  /// Use [isEnabled] to avoid ternary statements for [onPressed] — you can
  /// disable the button with:
  /// - `isEnabled: false` or
  /// - `onPressed: null`
  ///
  /// [child] and [isLoading] must not be null.
  FancyFlatButton({
    Key key,
    bool isEnabled,
    @required VoidCallback onPressed,
    @required this.child,
    this.isLoading = false,
    this.loadingChild,
    this.color,
  })  : onPressed = _actualOnPressed(isEnabled, onPressed, isLoading),
        assert(child != null),
        assert(!isLoading || loadingChild != null,
            'loadingChild must be set when isLoading is true'),
        super(key: key);

  final VoidCallback onPressed;
  final Widget child;
  final bool isLoading;
  final Widget loadingChild;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      color: color,
      child: isLoading ? _LoadingContent(child: loadingChild) : child,
    );
  }
}

/// In addition to a normal [OutlineButton], this [Widget] natively supports
/// disabling it and showing a loading state.
class FancyOutlineButton extends StatelessWidget {
  /// Creates a [OutlineButton].
  ///
  /// Use [isEnabled] to avoid ternary statements for [onPressed] — you can
  /// disable the button with:
  /// - `isEnabled: false` or
  /// - `onPressed: null`
  ///
  /// [child] and [isLoading] must not be null.
  FancyOutlineButton({
    Key key,
    bool isEnabled,
    @required VoidCallback onPressed,
    @required this.child,
    this.isLoading = false,
    this.loadingChild,
    this.color,
  })  : onPressed = _actualOnPressed(isEnabled, onPressed, isLoading),
        assert(child != null),
        assert(!isLoading || loadingChild != null,
            'loadingChild must be set when isLoading is true'),
        super(key: key);

  final VoidCallback onPressed;
  final Widget child;
  final bool isLoading;
  final Widget loadingChild;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: onPressed,
      color: color,
      child: isLoading ? _LoadingContent(child: loadingChild) : child,
    );
  }
}

/// In addition to a normal [RaisedButton], this [Widget] natively supports
/// disabling it and showing a loading state.
class FancyRaisedButton extends StatelessWidget {
  /// Creates a [RaisedButton].
  ///
  /// Use [isEnabled] to avoid ternary statements for [onPressed] — you can
  /// disable the button with:
  /// - `isEnabled: false` or
  /// - `onPressed: null`
  ///
  /// [child] and [isLoading] must not be null.
  FancyRaisedButton({
    Key key,
    bool isEnabled,
    @required VoidCallback onPressed,
    @required this.child,
    this.isLoading = false,
    this.loadingChild,
    this.color,
  })  : onPressed = _actualOnPressed(isEnabled, onPressed, isLoading),
        assert(child != null),
        assert(!isLoading || loadingChild != null,
            'loadingChild must be set when isLoading is true'),
        super(key: key);

  final VoidCallback onPressed;
  final Widget child;
  final bool isLoading;
  final Widget loadingChild;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      color: color,
      child: isLoading ? _LoadingContent(child: loadingChild) : child,
    );
  }
}

/// In addition to a normal [FloatingActionButton], this [Widget] natively
/// supports disabling it and showing a loading state.
class FancyFab extends StatelessWidget {
  /// Creates a circular [FloatingActionButton].
  ///
  /// Use [isEnabled] to avoid ternary statements for [onPressed] — you can
  /// disable the button with:
  /// - `isEnabled: false` or
  /// - `onPressed: null`
  FancyFab({
    Key key,
    bool isEnabled,
    @required VoidCallback onPressed,
    @required this.icon,
    this.isLoading = false,
  })  : isExtended = false,
        onPressed = _actualOnPressed(isEnabled, onPressed, isLoading),
        assert(icon != null),
        label = null,
        assert(isLoading != null),
        loadingLabel = null,
        super(key: key);

  /// Creates an extended [FloatingActionButton].
  ///
  /// Use [isEnabled] to avoid ternary statements for [onPressed] — you can
  /// disable the button with:
  /// - `isEnabled: false` or
  /// - `onPressed: null`
  FancyFab.extended({
    Key key,
    bool isEnabled,
    @required VoidCallback onPressed,
    this.icon,
    @required this.label,
    this.isLoading = false,
    @required this.loadingLabel,
  })  : isExtended = true,
        onPressed = _actualOnPressed(isEnabled, onPressed, isLoading),
        assert(label != null),
        assert(isLoading != null),
        assert(loadingLabel != null),
        super(key: key);

  final bool isExtended;
  final VoidCallback onPressed;
  final Widget icon;
  final Widget label;
  final bool isLoading;
  final Widget loadingLabel;

  @override
  Widget build(BuildContext context) {
    final icon = isLoading ? _buildLoadingIndicator() : this.icon;
    final backgroundColor = onPressed == null
        ? Color.alphaBlend(
            context.theme.disabledColor, context.theme.backgroundColor)
        : null;

    if (isExtended) {
      return FloatingActionButton.extended(
        onPressed: onPressed,
        backgroundColor: backgroundColor,
        icon: icon,
        label: DefaultTextStyle.merge(
          style: TextStyle(color: backgroundColor?.highEmphasisOnColor),
          child: isLoading ? loadingLabel : label,
        ),
      );
    }

    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      child: icon,
    );
  }

  Widget _buildLoadingIndicator() {
    return SizedBox(
      height: 24,
      width: 24,
      child: CircularProgressIndicator(strokeWidth: 3),
    );
  }
}

VoidCallback _actualOnPressed(
  bool isEnabled,
  VoidCallback onPressed,
  bool isLoading,
) {
  assert(!(isEnabled == true && onPressed == null),
      'When explicitly setting isEnabled to true, onPressed must not be null');
  assert(isLoading != null);

  final isActuallyEnabled = (isEnabled ?? onPressed != null) && !isLoading;
  return isActuallyEnabled ? onPressed : null;
}

class _LoadingContent extends StatelessWidget {
  const _LoadingContent({Key key, @required this.child})
      : assert(child != null),
        super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          height: 16,
          width: 16,
          child: CircularProgressIndicator(strokeWidth: 2),
        ),
        SizedBox(width: 8),
        child,
      ],
    );
  }
}
