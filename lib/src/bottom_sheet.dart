import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material show showModalBottomSheet;

import 'context.dart';

extension BottomSheetContext on BuildContext {
  /// Shortcut for `showModalBottomSheet(context: context, ...)`.
  Future<T?> showModalBottomSheet<T>({
    required WidgetBuilder builder,
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape,
    Clip? clipBehavior,
    bool isScrollControlled = false,
    bool useRootNavigator = false,
    bool isDismissible = true,
  }) {
    return material.showModalBottomSheet(
      context: this,
      builder: builder,
      backgroundColor: backgroundColor,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
      isScrollControlled: isScrollControlled,
      useRootNavigator: useRootNavigator,
      isDismissible: isDismissible,
    );
  }

  /// Shortcut for [showModalBottomSheet] with a [FancyBottomSheet] child.
  Future<T?> showFancyModalBottomSheet<T>({
    required WidgetBuilder builder,
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape,
    Clip? clipBehavior,
    bool isScrollControlled = false,
    bool useRootNavigator = false,
    bool isDismissible = true,
  }) {
    return material.showModalBottomSheet(
      context: this,
      builder: (_) => FancyBottomSheet(builder: builder),
      backgroundColor: backgroundColor,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
      isScrollControlled: isScrollControlled,
      useRootNavigator: useRootNavigator,
      isDismissible: isDismissible,
    );
  }
}

/// A wrapper for [BottomSheet] content that shows a drag indicator at the top.
///
/// This snippet shows a [BottomSheet] with some text:
/// ```dart
/// context.showModalBottomSheet<T>(
///   builder: (BuildContext context) {
///     return FancyBottomSheet(
///       builder: (BuildContext context) => Text('I am fancy!'),
///     );
///   },
/// );
/// ```
///
/// Or use `BuildContext.showFancyModalBottomSheet` directly:
/// ```dart
/// context.showFancyModalBottomSheet<T>(
///   builder: (BuildContext context) => Text('I am fancy!'),
/// );
/// ```
class FancyBottomSheet extends StatelessWidget {
  const FancyBottomSheet({super.key, required this.builder});

  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(child: DragIndicator()),
          const SizedBox(height: 8),
          builder(context),
        ],
      ),
    );
  }
}

class DragIndicator extends StatelessWidget {
  const DragIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: ShapeDecoration(
        color: context.theme.dividerColor,
        shape: const StadiumBorder(),
      ),
      child: const SizedBox(width: 36, height: 8),
    );
  }
}
