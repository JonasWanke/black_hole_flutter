import 'package:flutter/widgets.dart';

extension FancyMenuController on MenuController {
  void toggle() => isOpen ? close() : open();
}
