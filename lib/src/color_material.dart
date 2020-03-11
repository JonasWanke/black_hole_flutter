import 'package:flutter/material.dart';

import 'color.dart';

// Values taken from [https://material.io/design/color/text-legibility.html].
const _highEmphasisOpacity = 0.87;
const _mediumEmphasisOpacity = 0.6;
const _disabledOpacity = 0.38;

extension BrightnessMaterialColors on Brightness {
  /// The Material Design high emphasis color of this brightness.
  Color get highEmphasisColor => color.withOpacity(_highEmphasisOpacity);

  /// The Material Design high emphasis color contrasting with this brightness.
  Color get highEmphasisOnColor =>
      contrastColor.withOpacity(_highEmphasisOpacity);

  /// The Material Design medium emphasis color of this brightness.
  Color get mediumEmphasisColor => color.withOpacity(_mediumEmphasisOpacity);

  /// The Material Design medium emphasis color contrasting with this brightness.
  Color get mediumEmphasisOnColor =>
      contrastColor.withOpacity(_mediumEmphasisOpacity);

  /// The Material Design disabled color of this brightness.
  Color get disabledColor => color.withOpacity(_disabledOpacity);

  /// The Material Design disabled color contrasting with this brightness.
  Color get disabledOnColor => contrastColor.withOpacity(_disabledOpacity);
}

extension MaterialColors on Color {
  /// The Material Design high emphasis color contrasting with this color.
  Color get highEmphasisOnColor => estimatedBrightness.highEmphasisOnColor;

  /// The Material Design medium emphasis color contrasting with this color.
  Color get mediumEmphasisOnColor => estimatedBrightness.mediumEmphasisOnColor;

  /// The Material Design disabled color contrasting with this color.
  Color get disabledOnColor => estimatedBrightness.disabledOnColor;
}

extension ThemeMaterialColors on ThemeData {
  /// The Material Design high emphasis color contrasting with this theme's
  /// [Brightness].
  Color get highEmphasisOnColor => brightness.highEmphasisOnColor;

  /// The Material Design medium emphasis color contrasting with this theme's
  /// [Brightness].
  Color get mediumEmphasisOnColor => brightness.mediumEmphasisOnColor;

  /// The Material Design disabled color contrasting with this theme's
  /// [Brightness].
  Color get disabledOnColor => brightness.disabledOnColor;
}
