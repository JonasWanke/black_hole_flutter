import 'dart:math';
import 'dart:ui';

import 'package:dartx/dartx.dart';

extension FancySize on Size {
  /// The squared length of the diagonal of a rectangle with this [Size].
  double get squaredDiagonal => width * width + height * height;

  /// The length of the diagonal of a rectangle with this [Size].
  double get diagonal => sqrt(squaredDiagonal);

  /// Ensures that this [Size] is not smaller than the specified [minimum] in
  /// any axis.
  Size coerceAtLeast(Size minimum) {
    return Size(
      width.coerceAtLeast(minimum.width),
      height.coerceAtLeast(minimum.height),
    );
  }

  /// Ensures that this [Size] is not larger than the specified [maximum] in
  /// any axis.
  Size coerceAtMost(Size maximum) {
    return Size(
      width.coerceAtMost(maximum.width),
      height.coerceAtMost(maximum.height),
    );
  }
}
