import 'dart:math' as math;
import 'dart:ui';

extension FancySize on Size {
  /// The squared length of the diagonal of a rectangle with this [Size].
  double get squaredDiagonal => width * width + height * height;

  /// The length of the diagonal of a rectangle with this [Size].
  double get diagonal => math.sqrt(squaredDiagonal);

  /// Ensures that this [Size] is not smaller than the specified [minimum] in
  /// any axis.
  Size coerceAtLeast(Size minimum) =>
      Size(math.max(width, minimum.width), math.max(height, minimum.height));

  /// Ensures that this [Size] is not larger than the specified [maximum] in
  /// any axis.
  Size coerceAtMost(Size maximum) =>
      Size(math.min(width, maximum.width), math.min(height, maximum.height));
}
