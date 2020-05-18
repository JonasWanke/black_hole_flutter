import 'package:flutter/widgets.dart';

extension AsyncSnapshotBlackHole<T> on AsyncSnapshot<T> {
  /// Returns whether this snapshot has a `null` [data] value.
  bool get hasNoData => !hasData;

  /// Returns whether this snapshot has a `null` [error] value.
  bool get hasNoError => !hasError;
}
