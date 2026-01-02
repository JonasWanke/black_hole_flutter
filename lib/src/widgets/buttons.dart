import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../color_material.dart';
import '../context.dart';

/// In addition to a normal [TextButton], this [Widget] natively supports
/// disabling it and showing a loading state.
class FancyTextButton extends _FancyButton {
  /// Creates a [TextButton].
  ///
  /// {@macro black_hole_flutter.buttons.isEnabled}
  const FancyTextButton({
    super.key,
    super.isEnabled,
    required super.onPressed,
    required super.child,
    super.isLoading,
    super.loadingChild,
    super.loadingIndicator,
    super.style,
  });

  /// Creates a [TextButton] with a leading icon.
  ///
  /// {@macro black_hole_flutter.buttons.isEnabled}
  const FancyTextButton.icon({
    super.key,
    super.isEnabled,
    required super.onPressed,
    required Widget super.icon,
    required Widget label,
    super.isLoading,
    Widget? loadingLabel,
    super.loadingIndicator,
    super.style,
  }) : super(child: label, loadingChild: loadingLabel);

  @override
  Widget _buildDefault(BuildContext context) {
    return TextButton(onPressed: actualOnPressed, style: style, child: child);
  }

  @override
  Widget _buildIcon(BuildContext context, Widget icon) {
    return TextButton.icon(
      onPressed: actualOnPressed,
      style: style,
      icon: icon,
      label: actualChild,
    );
  }
}

/// In addition to a normal [OutlinedButton], this [Widget] natively supports
/// disabling it and showing a loading state.
class FancyOutlinedButton extends _FancyButton {
  /// Creates an [OutlinedButton].
  ///
  /// {@macro black_hole_flutter.buttons.isEnabled}
  const FancyOutlinedButton({
    super.key,
    super.isEnabled,
    required super.onPressed,
    required super.child,
    super.isLoading,
    super.loadingChild,
    super.loadingIndicator,
    super.style,
  });

  /// Creates an [OutlinedButton] with a leading icon.
  ///
  /// {@macro black_hole_flutter.buttons.isEnabled}
  const FancyOutlinedButton.icon({
    super.key,
    super.isEnabled,
    required super.onPressed,
    required Widget super.icon,
    required Widget label,
    super.isLoading,
    Widget? loadingLabel,
    super.loadingIndicator,
    super.style,
  }) : super(child: label, loadingChild: loadingLabel);

  @override
  Widget _buildDefault(BuildContext context) {
    return OutlinedButton(
      onPressed: actualOnPressed,
      style: style,
      child: child,
    );
  }

  @override
  Widget _buildIcon(BuildContext context, Widget icon) {
    return OutlinedButton.icon(
      onPressed: actualOnPressed,
      style: style,
      icon: icon,
      label: actualChild,
    );
  }
}

/// In addition to a normal [ElevatedButton], this [Widget] natively supports
/// disabling it and showing a loading state.
class FancyElevatedButton extends _FancyButton {
  /// Creates a [ElevatedButton].
  ///
  /// {@macro black_hole_flutter.buttons.isEnabled}
  const FancyElevatedButton({
    super.key,
    super.isEnabled,
    required super.onPressed,
    required super.child,
    super.isLoading,
    super.loadingChild,
    super.loadingIndicator,
    super.style,
  });

  /// Creates a [ElevatedButton] with a leading icon.
  ///
  /// {@macro black_hole_flutter.buttons.isEnabled}
  const FancyElevatedButton.icon({
    super.key,
    super.isEnabled,
    required super.onPressed,
    required Widget super.icon,
    required Widget label,
    super.isLoading,
    Widget? loadingLabel,
    super.loadingIndicator,
    super.style,
  }) : super(child: label, loadingChild: loadingLabel);

  @override
  Widget _buildDefault(BuildContext context) {
    return ElevatedButton(
      onPressed: actualOnPressed,
      style: style,
      child: child,
    );
  }

  @override
  Widget _buildIcon(BuildContext context, Widget icon) {
    return ElevatedButton.icon(
      onPressed: actualOnPressed,
      style: style,
      icon: icon,
      label: actualChild,
    );
  }
}

/// In addition to a normal [FilledButton], this [Widget] natively supports
/// disabling it and showing a loading state.
class FancyFilledButton extends _FancyButton {
  /// Creates a [FilledButton].
  ///
  /// {@macro black_hole_flutter.buttons.isEnabled}
  const FancyFilledButton({
    super.key,
    super.isEnabled,
    required super.onPressed,
    required super.child,
    super.isLoading,
    super.loadingChild,
    super.loadingIndicator,
    super.style,
  }) : isTonal = false;

  /// Creates a [FilledButton] with a leading icon.
  ///
  /// {@macro black_hole_flutter.buttons.isEnabled}
  const FancyFilledButton.icon({
    super.key,
    super.isEnabled,
    required super.onPressed,
    required Widget super.icon,
    required Widget label,
    super.isLoading,
    Widget? loadingLabel,
    super.loadingIndicator,
    super.style,
  }) : isTonal = false,
       super(child: label, loadingChild: loadingLabel);

  /// Creates a [FilledButton.tonal].
  ///
  /// {@macro black_hole_flutter.buttons.isEnabled}
  const FancyFilledButton.tonal({
    super.key,
    super.isEnabled,
    required super.onPressed,
    required super.child,
    super.isLoading,
    super.loadingChild,
    super.loadingIndicator,
    super.style,
  }) : isTonal = true;

  /// Creates a [FilledButton.tonalIcon] with a leading icon.
  ///
  /// {@macro black_hole_flutter.buttons.isEnabled}
  const FancyFilledButton.tonalIcon({
    super.key,
    super.isEnabled,
    required super.onPressed,
    required Widget super.icon,
    required Widget label,
    super.isLoading,
    Widget? loadingLabel,
    super.loadingIndicator,
    super.style,
  }) : isTonal = true,
       super(child: label, loadingChild: loadingLabel);

  final bool isTonal;

  @override
  Widget _buildDefault(BuildContext context) {
    return (isTonal ? FilledButton.tonal : FilledButton.new)(
      onPressed: actualOnPressed,
      style: style,
      child: child,
    );
  }

  @override
  Widget _buildIcon(BuildContext context, Widget icon) {
    return (isTonal ? FilledButton.tonalIcon : FilledButton.icon)(
      onPressed: actualOnPressed,
      style: style,
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
  const FancyFab({
    super.key,
    super.isEnabled,
    required super.onPressed,
    required super.child,
    super.isLoading,
    Widget? loadingLabel,
    super.loadingIndicator,
    this.backgroundColor,
    this.shape,
  }) : _type = .regular,
       reverseChildren = false,
       super(loadingChild: loadingLabel);

  /// Creates a circular [FloatingActionButton.small].
  ///
  /// {@macro black_hole_flutter.buttons.isEnabled}
  const FancyFab.small({
    super.key,
    super.isEnabled,
    required super.onPressed,
    required super.child,
    super.isLoading,
    Widget? loadingLabel,
    super.loadingIndicator,
    this.backgroundColor,
    this.shape,
  }) : _type = .small,
       reverseChildren = false,
       super(loadingChild: loadingLabel);

  /// Creates a circular [FloatingActionButton.large].
  ///
  /// {@macro black_hole_flutter.buttons.isEnabled}
  const FancyFab.large({
    super.key,
    super.isEnabled,
    required super.onPressed,
    required super.child,
    super.isLoading,
    Widget? loadingLabel,
    super.loadingIndicator,
    this.backgroundColor,
    this.shape,
  }) : _type = .large,
       reverseChildren = false,
       super(loadingChild: loadingLabel);

  /// Creates an extended [FloatingActionButton].
  ///
  /// {@macro black_hole_flutter.buttons.isEnabled}
  const FancyFab.extended({
    super.key,
    super.isEnabled,
    required super.onPressed,
    required Widget super.icon,
    required Widget label,
    super.isLoading,
    Widget? loadingLabel,
    super.loadingIndicator,
    this.backgroundColor,
    this.shape,
    this.reverseChildren = false,
  }) : _type = .extended,
       super(child: label, loadingChild: loadingLabel);

  final Color? backgroundColor;
  final ShapeBorder? shape;
  final _FloatingActionButtonType _type;

  final bool reverseChildren;

  @override
  double get loadingIndicatorSize => 24;

  @override
  Widget _buildDefault(BuildContext context) {
    final constructor = switch (_type) {
      .regular => FloatingActionButton.new,
      .small => FloatingActionButton.small,
      .large => FloatingActionButton.large,
      .extended => throw StateError('Extended FAB requires an icon'),
    };
    return constructor(
      onPressed: actualOnPressed,
      foregroundColor: _foregroundColor(context),
      backgroundColor: _backgroundColor(context),
      shape: shape,
      child: isLoading ? actualLoadingIndicator : child,
    );
  }

  @override
  Widget _buildIcon(BuildContext context, Widget icon) {
    if (isLoading && this.icon == null && loadingChild == null) {
      // While loading a default FAB, we don't want a loading indicator next to
      // the icon if no loadingChild is set.
      return _buildDefault(context);
    }

    Widget child = FloatingActionButton.extended(
      onPressed: actualOnPressed,
      foregroundColor: _foregroundColor(context),
      backgroundColor: _backgroundColor(context),
      shape: shape,
      icon: reverseChildren ? null : icon,
      label: reverseChildren
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [actualChild, const SizedBox(width: 8), icon],
            )
          : actualChild,
    );

    final customSizeConstraints = switch (_type) {
      _FloatingActionButtonType.regular => null,
      _FloatingActionButtonType.small =>
        context.theme.floatingActionButtonTheme.smallSizeConstraints
                ?.heightConstraints() ??
            const BoxConstraints.tightFor(height: 40),
      _FloatingActionButtonType.large =>
        context.theme.floatingActionButtonTheme.largeSizeConstraints
                ?.heightConstraints() ??
            const BoxConstraints.tightFor(height: 96),
      _FloatingActionButtonType.extended => null,
    };
    if (customSizeConstraints != null) {
      child = Theme(
        data: context.theme.copyWith(
          floatingActionButtonTheme: context.theme.floatingActionButtonTheme
              .copyWith(extendedSizeConstraints: customSizeConstraints),
        ),
        child: child,
      );
    }

    return child;
  }

  Color? _foregroundColor(BuildContext context) {
    if (isActuallyEnabled) return null;

    return _backgroundColor(context)?.disabledOnColor;
  }

  Color? _backgroundColor(BuildContext context) {
    if (isActuallyEnabled) return backgroundColor;

    return Color.alphaBlend(
      context.theme.disabledColor,
      context.theme.scaffoldBackgroundColor,
    );
  }
}

enum _FloatingActionButtonType { regular, small, large, extended }

/// In addition to a normal [IconButton], this [Widget] natively supports
/// disabling it and showing a loading state.
class FancyIconButton extends _FancyButton {
  /// Creates an [IconButton].
  ///
  /// {@macro black_hole_flutter.buttons.isEnabled}
  const FancyIconButton({
    super.key,
    super.isEnabled,
    required super.onPressed,
    required Widget icon,
    super.isLoading,
    super.loadingChild,
    super.loadingIndicator,
    this.tooltip,
    super.style,
  }) : _variant = .standard,
       super(child: icon);

  /// Creates an [IconButton.filled].
  ///
  /// {@macro black_hole_flutter.buttons.isEnabled}
  const FancyIconButton.filled({
    super.key,
    super.isEnabled,
    required super.onPressed,
    required Widget icon,
    super.isLoading,
    super.loadingChild,
    super.loadingIndicator,
    this.tooltip,
    super.style,
  }) : _variant = .filled,
       super(child: icon);

  /// Creates an [IconButton.filledTonal].
  ///
  /// {@macro black_hole_flutter.buttons.isEnabled}
  const FancyIconButton.filledTonal({
    super.key,
    super.isEnabled,
    required super.onPressed,
    required Widget icon,
    super.isLoading,
    super.loadingChild,
    super.loadingIndicator,
    this.tooltip,
    super.style,
  }) : _variant = .filledTonal,
       super(child: icon);

  /// Creates an [IconButton.outlined].
  ///
  /// {@macro black_hole_flutter.buttons.isEnabled}
  const FancyIconButton.outlined({
    super.key,
    super.isEnabled,
    required super.onPressed,
    required Widget icon,
    super.isLoading,
    super.loadingChild,
    super.loadingIndicator,
    this.tooltip,
    super.style,
  }) : _variant = .outlined,
       super(child: icon);

  final String? tooltip;
  final _IconButtonVariant _variant;

  @override
  Widget _buildDefault(BuildContext context) => _buildIcon(context, child);
  @override
  Widget _buildIcon(BuildContext context, Widget icon) {
    final constructor = switch (_variant) {
      .standard => IconButton.new,
      .filled => IconButton.filled,
      .filledTonal => IconButton.filledTonal,
      .outlined => IconButton.outlined,
    };
    return constructor(
      onPressed: actualOnPressed,
      tooltip: tooltip,
      style: style,
      icon: icon,
    );
  }
}

enum _IconButtonVariant { standard, filled, filledTonal, outlined }

abstract class _FancyButton extends StatelessWidget {
  /// {@template black_hole_flutter.buttons.isEnabled}
  /// Use [isEnabled] to avoid ternary statements for [onPressed] — you can
  /// disable the button with:
  ///
  /// * `isEnabled: false` or
  /// * `onPressed: null`
  /// {@endtemplate}
  const _FancyButton({
    super.key,
    this.isEnabled,
    required this.onPressed,
    this.isLoading = false,
    this.loadingIndicator,
    this.loadingChild,
    this.style,
    this.icon,
    required this.child,
  }) : assert(
         !((isEnabled ?? false) && onPressed == null),
         'When explicitly setting isEnabled to true, onPressed must not be '
         'null',
       );

  final bool? isEnabled;
  bool get isActuallyEnabled => (isEnabled ?? onPressed != null) && !isLoading;

  final VoidCallback? onPressed;
  VoidCallback? get actualOnPressed => isActuallyEnabled ? onPressed : null;

  final bool isLoading;
  final Widget? loadingIndicator;
  Widget get actualLoadingIndicator =>
      loadingIndicator ?? _LoadingIndicator(loadingIndicatorSize);

  final Widget? loadingChild;
  Widget get actualLoadingChild => loadingChild ?? child;

  @visibleForOverriding
  double get loadingIndicatorSize => 18;

  final ButtonStyle? style;

  final Widget? icon;
  final Widget child;
  Widget get actualChild => isLoading ? actualLoadingChild : child;

  @override
  @nonVirtual
  Widget build(BuildContext context) {
    if (isLoading) return _buildIcon(context, actualLoadingIndicator);
    if (icon != null) return _buildIcon(context, icon!);
    return _buildDefault(context);
  }

  Widget _buildDefault(BuildContext context);
  Widget _buildIcon(BuildContext context, Widget icon);
}

class _LoadingIndicator extends StatelessWidget {
  const _LoadingIndicator(this.size);

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: size,
      child: const CircularProgressIndicator(strokeWidth: 2),
    );
  }
}
