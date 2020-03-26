import 'package:flutter/material.dart';

extension FancyBrightness on Brightness {
  /// `true` for [Brightness.dark], `false` otherwise.
  bool get isDark => this == Brightness.dark;

  /// `true` for [Brightness.light], `false` otherwise.
  bool get isLight => this == Brightness.light;

  /// The opposite [Brightness] — [light] becomes [dark] and vice versa.
  Brightness get opposite => isDark ? Brightness.light : Brightness.dark;

  /// The [Color] representing this [Brightness]:
  /// - [Colors.black] for [Brightness.dark]
  /// - [Colors.white] for [Brightness.light]
  Color get color => isDark ? Colors.black : Colors.white;

  /// The [Color] contrasting this [Brightness]:
  /// - [Colors.white] for [Brightness.dark]
  /// - [Colors.black] for [Brightness.light]
  Color get contrastColor => opposite.color;
}

extension FancyColor on Color {
  /// Returns the estimated [Brightness] of this color based on its luminance.
  Brightness get estimatedBrightness =>
      ThemeData.estimateBrightnessForColor(this);

  /// A pure [Color] contrasting with this one (i.e., [Colors.black] or
  /// [Colors.white]), depending on the estimated [Brightness].
  Color get contrastColor => estimatedBrightness.contrastColor;

  /// Shortcut for `HSLColor.fromColor(color)`.
  HSLColor get hsl => HSLColor.fromColor(this);

  /// Shortcut for `HSVColor.fromColor(color)`.
  HSVColor get hsv => HSVColor.fromColor(this);
}

extension FancyThemeData on ThemeData {
  /// `true` for [Brightness.dark], `false` otherwise.
  bool get isDark => brightness.isDark;

  /// `true` for [Brightness.light], `false` otherwise.
  bool get isLight => brightness.isLight;

  /// A pure [Color] contrasting with this theme's [Brightness], i.e.
  /// [Colors.black] or [Colors.white].
  Color get contrastColor => brightness.contrastColor;
}
