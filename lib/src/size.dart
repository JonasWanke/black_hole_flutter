import 'dart:math';
import 'dart:ui';

extension FancySize on Size {
  /// The squared length of the diagonal of a rectangle with this [Size].
  double get squaredDiagonal => width * width + height * height;

  /// The length of the diagonal of a rectangle with this [Size].
  double get diagonal => sqrt(squaredDiagonal);
}
