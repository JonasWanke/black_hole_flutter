🛠 A package absorbing all Flutter utility functions, including extension functions and commonly used widgets.

## [`BuildContext`]

In Flutter you often see the pattern `<Class>.of(context)` (e.g. [`Theme.of(context)`]). This package adds extension getters on [`BuildContext`] for those classes so you can just say:
```dart
context.theme         // ≙ Theme.of(context)
context.textTheme     // ≙ Theme.of(context).textTheme
context.navigator     // ≙ Navigator.of(context)
context.rootNavigator // ≙ Navigator.of(this, rootNavigator: true)
context.scaffold      // ≙ Scaffold.of(context)
context.form          // ≙ Form.of(context)
// ... and many others!
```

## Buttons

Did you ever want to show a [progress indicator][`ProgressIndicator`] inside a button? Or were annoyed to conditionally set a [Button][`MaterialButton`]'s [`onPressed`][`MaterialButton.onPressed`] to disable it? Fear no more — black_hole_flutter has got you covered!

![Button demo](https://github.com/JonasWanke/black_hole_flutter/raw/master/doc/demo-buttons.gif?raw=true)

In [`FancyFab`] (a [`FloatingActionButton`]), [`FancyFlatButton`], [`FancyOutlineButton`] & [`FancyRaisedButton`], we introduce some new parameters:
- [`isLoading`][`FancyFab.isLoading`]: Setting this to `true` shows a [`CircularProgressIndicator`] and disables this button. You can optionally specify a [`loadingChild`][`FancyFlatButton.loadingChild`] ([`loadingLabel`][`FancyFab.loadingLabel`] on [`FancyFab`]) to show next to the progress indicator.
- `isEnabled`: Settings this to `false` disables this button, even if [`onPressed`][`FancyFab.onPressed`] is set.


## Material colors

[Material Design](https://material.io/design/color/text-legibility.html) specifies different opacities of white and black colors to use for text of different emphases on colored backgrounds. You can now use the [`highEmphasisOnColor`][`MaterialColors.highEmphasisOnColor`], [`mediumEmphasisOnColor`][`MaterialColors.mediumEmphasisOnColor`] and [`disabledOnColor`][`MaterialColors.disabledOnColor`] extension getters on [`Color`] to make your text legible!

There are also getters on [`ThemeData`] for contrast colors on the primary, accent, background, and error colors.


<!-- Flutter -->
[`BuildContext`]: https://api.flutter.dev/flutter/widgets/BuildContext-class.html
[`CircularProgressIndicator`]: https://api.flutter.dev/flutter/material/CircularProgressIndicator-class.html
[`Color`]: https://api.flutter.dev/flutter/material/Colors-class.html
[`FloatingActionButton`]: https://api.flutter.dev/flutter/material/FloatingActionButton-class.html
[`MaterialButton`]: https://api.flutter.dev/flutter/material/FlatButton-class.html
[`MaterialButton.onPressed`]: https://api.flutter.dev/flutter/material/MaterialButton/onPressed.html
[`ProgressIndicator`]: https://api.flutter.dev/flutter/material/ProgressIndicator-class.html
[`Theme.of`]: https://api.flutter.dev/flutter/material/Theme/of.html
[`ThemeData`]: https://api.flutter.dev/flutter/material/ThemeData-class.html
<!-- black_hole_flutter -->
[`FancyFab`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyFab-class.html
[`FancyFab.isLoading`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyFab/isLoading.html
[`FancyFab.loadingLabel`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyFab/loadingLabel.html
[`FancyFab.onPressed`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyFab/onPressed.html
[`FancyFlatButton`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyFlatButton-class.html
[`FancyFlatButton.loadingChild`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyFlatButton/loadingChild.html
[`FancyOutlineButton`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyOutlineButton-class.html
[`FancyRaisedButton`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyRaisedButton-class.html
[`MaterialColors.disabledOnColor`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/MaterialColors/disabledOnColor.html
[`MaterialColors.highEmphasisOnColor`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/MaterialColors/highEmphasisOnColor.html
[`MaterialColors.mediumEmphasisOnColor`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/MaterialColors/mediumEmphasisOnColor.html
