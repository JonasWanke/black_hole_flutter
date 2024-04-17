import 'package:flutter/material.dart';

import 'color.dart';

// Values taken from https://m2.material.io/design/color/text-legibility.html.
const _highEmphasisOpacity = 0.87;
const _mediumEmphasisOpacity = 0.6;
const _disabledOpacity = 0.38;

extension BrightnessMaterialColors on Brightness {
  /// The Material Design high emphasis color of this brightness.
  Color get highEmphasisColor => color.withHighEmphasisOpacity;

  /// The Material Design high emphasis color contrasting with this brightness.
  Color get highEmphasisOnColor => contrastColor.withHighEmphasisOpacity;

  /// The Material Design medium emphasis color of this brightness.
  Color get mediumEmphasisColor => color.withMediumEmphasisOpacity;

  /// The Material Design medium emphasis color contrasting with this
  /// brightness.
  Color get mediumEmphasisOnColor => contrastColor.withMediumEmphasisOpacity;

  /// The Material Design disabled color of this brightness.
  Color get disabledColor => color.withDisabledOpacity;

  /// The Material Design disabled color contrasting with this brightness.
  Color get disabledOnColor => contrastColor.withDisabledOpacity;
}

extension MaterialColors on Color {
  /// The Material Design high emphasis version with this color.
  Color get withHighEmphasisOpacity => withOpacity(_highEmphasisOpacity);

  /// The Material Design medium emphasis version with this color.
  Color get withMediumEmphasisOpacity => withOpacity(_mediumEmphasisOpacity);

  /// The Material Design disabled version with this color.
  Color get withDisabledOpacity => withOpacity(_disabledOpacity);

  /// The Material Design high emphasis color contrasting with this color.
  Color get highEmphasisOnColor => estimatedBrightness.highEmphasisOnColor;

  /// The Material Design medium emphasis color contrasting with this color.
  Color get mediumEmphasisOnColor => estimatedBrightness.mediumEmphasisOnColor;

  /// The Material Design disabled color contrasting with this color.
  Color get disabledOnColor => estimatedBrightness.disabledOnColor;
}

extension ThemeMaterialColors on ThemeData {
  // Primary color

  /// The Material Design "On" color contrasting with this theme's
  /// primary [Color], i.e., [Colors.black] or [Colors.white].
  Color get onPrimary => colorScheme.primary.contrastColor;

  /// The Material Design high emphasis color contrasting with this theme's
  /// primary [Color].
  Color get highEmphasisOnPrimary => colorScheme.primary.highEmphasisOnColor;

  /// The Material Design medium emphasis color contrasting with this theme's
  /// primary [Color].
  Color get mediumEmphasisOnPrimary =>
      colorScheme.primary.mediumEmphasisOnColor;

  /// The Material Design disabled color contrasting with this theme's
  /// primary [Color].
  Color get disabledOnPrimary => colorScheme.primary.disabledOnColor;

  // Accent color

  /// The Material Design "On" color contrasting with this theme's
  /// accent [Color], i.e., [Colors.black] or [Colors.white].
  @Deprecated(
    'Use `onSecondary` instead. This feature was deprecated after v0.3.2',
  )
  Color get onAccent => onSecondary;

  /// The Material Design high emphasis color contrasting with this theme's
  /// accent [Color].
  @Deprecated(
    'Use `highEmphasisOnSecondary` instead. This feature was deprecated after '
    'v0.3.2',
  )
  Color get highEmphasisOnAccent => highEmphasisOnSecondary;

  /// The Material Design medium emphasis color contrasting with this theme's
  /// accent [Color].
  @Deprecated(
    'Use `mediumEmphasisOnSecondary` instead. This feature was deprecated '
    'after v0.3.2',
  )
  Color get mediumEmphasisOnAccent => mediumEmphasisOnSecondary;

  /// The Material Design disabled color contrasting with this theme's
  /// accent [Color].
  @Deprecated(
    'Use `disabledOnSecondary` instead. This feature was deprecated after '
    'v0.3.2',
  )
  Color get disabledOnAccent => disabledOnSecondary;

  // Secondary color

  /// The Material Design "On" color contrasting with this theme's
  /// accent [Color], i.e., [Colors.black] or [Colors.white].
  Color get onSecondary => colorScheme.secondary.contrastColor;

  /// The Material Design high emphasis color contrasting with this theme's
  /// [ColorScheme.secondary] [Color].
  Color get highEmphasisOnSecondary =>
      colorScheme.secondary.highEmphasisOnColor;

  /// The Material Design medium emphasis color contrasting with this theme's
  /// [ColorScheme.secondary] [Color].
  Color get mediumEmphasisOnSecondary =>
      colorScheme.secondary.mediumEmphasisOnColor;

  /// The Material Design disabled color contrasting with this theme's
  /// [ColorScheme.secondary] [Color].
  Color get disabledOnSecondary => colorScheme.secondary.disabledOnColor;

  // Background color

  /// The Material Design "On" color contrasting with this theme's
  /// background [Color], i.e., [Colors.black] or [Colors.white].
  Color get onBackground => colorScheme.background.contrastColor;

  /// The Material Design high emphasis color contrasting with this theme's
  /// background [Color].
  Color get highEmphasisOnBackground =>
      colorScheme.background.highEmphasisOnColor;

  /// The Material Design medium emphasis color contrasting with this theme's
  /// background [Color].
  Color get mediumEmphasisOnBackground =>
      colorScheme.background.mediumEmphasisOnColor;

  /// The Material Design disabled color contrasting with this theme's
  /// background [Color].
  Color get disabledOnBackground => colorScheme.background.disabledOnColor;

  // Error color

  /// The Material Design "On" color contrasting with this theme's
  /// error [Color], i.e., [Colors.black] or [Colors.white].
  Color get onError => colorScheme.error.contrastColor;

  /// The Material Design high emphasis color contrasting with this theme's
  /// error [Color].
  Color get highEmphasisOnError => colorScheme.error.highEmphasisOnColor;

  /// The Material Design medium emphasis color contrasting with this theme's
  /// error [Color].
  Color get mediumEmphasisOnError => colorScheme.error.mediumEmphasisOnColor;

  /// The Material Design disabled color contrasting with this theme's
  /// error [Color].
  Color get disabledOnError => colorScheme.error.disabledOnColor;
}
