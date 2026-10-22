import 'package:material_ui/material_ui.dart';

import 'color.dart';

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
  /// Alpha value for Material Design high-emphasis text.
  ///
  /// https://m2.material.io/design/color/text-legibility.html
  static const highEmphasisTextAlpha = 0.87;

  /// Alpha value for Material Design medium-emphasis text.
  ///
  /// https://m2.material.io/design/color/text-legibility.html
  static const mediumEmphasisTextAlpha = 0.6;

  /// Alpha value for Material Design disabled text.
  ///
  /// https://m2.material.io/design/color/text-legibility.html
  static const disabledTextAlpha = 0.38;

  /// The Material Design high emphasis version with this color.
  Color get withHighEmphasisOpacity => withValues(alpha: highEmphasisTextAlpha);

  /// The Material Design medium emphasis version with this color.
  Color get withMediumEmphasisOpacity =>
      withValues(alpha: mediumEmphasisTextAlpha);

  /// The Material Design disabled version with this color.
  Color get withDisabledOpacity => withValues(alpha: disabledTextAlpha);

  /// The Material Design high emphasis color contrasting with this color.
  Color get highEmphasisOnColor => estimatedBrightness.highEmphasisOnColor;

  /// The Material Design medium emphasis color contrasting with this color.
  Color get mediumEmphasisOnColor => estimatedBrightness.mediumEmphasisOnColor;

  /// The Material Design disabled color contrasting with this color.
  Color get disabledOnColor => estimatedBrightness.disabledOnColor;
}
