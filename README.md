🛠 A package absorbing all Flutter utility functions, including extension functions and commonly used widgets.

- [📄 Bottom Sheet](#-bottom-sheet)
- [🏗 BuildContext](#-buildcontext)
- [🎨 Colors](#-colors)
  - [🌈 Material Design colors](#-material-design-colors)
- [🧭 Navigation](#-navigation)
- [📱 Widgets](#-widgets)
  - [🔳 Buttons](#-buttons)
  - [🥔 ChipGroup](#-chipgroup)
  - [🥙 FillOrWrap](#-fillorwrap)
  - [↔ SeparatedButtons](#-separatedbuttons)
  - [📚 TitleAndSubtitle](#-titleandsubtitle)
- [🖼 RenderObject](#-renderobject)
- [↕ Size](#-size)


## 📄 Bottom Sheet

Show modal bottom sheets using: [`context.showModalBottomSheet()`].

<img src="https://github.com/JonasWanke/black_hole_flutter/raw/master/doc/widgets-fancyBottomSheet.png?raw=true" width="250px" alt="FancyBottomSheet demo" />

Also, this package adds a custom [`FancyBottomSheet`] with a drag indicator at the top. You can create one using [`context.showFancyModalBottomSheet()`].

[`context.showModalBottomSheet()`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/BottomSheetContext/showModalBottomSheet.html
[`context.showFancyModalBottomSheet()`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/BottomSheetContext/showFancyModalBottomSheet.html
[`FancyBottomSheet`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/BottomSheetContext.html


## 🏗 BuildContext

In Flutter, you often see the pattern `<Class>.of(context)` (e.g., [`Theme.of(context)`][`Theme.of`]). This package adds extension getters on [`BuildContext`] for those classes so you can just say:

| Extension                         | Shortcut for                         |
| --------------------------------- | ------------------------------------ |
| [`context.defaultTextStyle`]      | `DefaultTextStyle.of(context)`       |
| [`context.directionality`]        | `Directionality.of(context)`         |
| [`context.form`]                  | `Form.of(context)`                   |
| [`context.locale`]                | `Localizations.localeOf(context)`    |
| [`context.materialLocalizations`] | `MaterialLocalizations.of(context)`  |
| [`context.mediaQuery`]            | `MediaQuery.of(context)`             |
| [`context.pageStorage`]           | `PageStorage.of(context)`            |
| [`context.scaffold`]              | `Scaffold.of(context)`               |
| [`context.scaffoldOrNull`]        | `Scaffold.of(context, nullOk: true)` |
| [`context.textTheme`]             | `Theme.of(context).textTheme`        |
| [`context.theme`]                 | `Theme.of(context)`                  |

[`context.defaultTextStyle`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyContext/defaultTextStyle.html
[`context.directionality`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyContext/directionality.html
[`context.form`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyContext/form.html
[`context.locale`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyContext/locale.html
[`context.materialLocalizations`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyContext/materialLocalizations.html
[`context.mediaQuery`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyContext/mediaQuery.html
[`context.pageStorage`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyContext/pageStorage.html
[`context.scaffold`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyContext/scaffold.html
[`context.scaffoldOrNull`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyContext/scaffoldOrNull.html
[`context.textTheme`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyContext/textTheme.html
[`context.theme`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyContext/theme.html


## 🎨 Colors

Handy extensions on [`Brightness`]:

| Extension                    | Explanation                                                                                                                            |
| ---------------------------- | -------------------------------------------------------------------------------------------------------------------------------------- |
| [`brightness.isDark`]        | ≙ `brightness == Brightness.dark`                                                                                                      |
| [`brightness.isLight`]       | ≙ `brightness == Brightness.light`                                                                                                     |
| [`brightness.opposite`]      | opposite Brightness                                                                                                                    |
| [`brightness.color`]         | [`Color`] representing this brightness, i.e.:<br />· `Colors.white` for `Brightness.light`<br />· `Colors.black` for `Brightness.dark` |
| [`brightness.contrastColor`] | opposite of `brightness.color` (above)                                                                                                 |

`isDark`, `isLight` & `contrastColor` can also be used on [`ThemeData`] directly.

Handy extensions on [`Color`]:

| Extension                                       | Explanation                                                     |
| ----------------------------------------------- | --------------------------------------------------------------- |
| [`color.estimatedBrightness`]                   | estimated [`Brightness`] based on `color`'s luminance           |
| [`color.isOpaque`]                              | if opacity is `1.0`                                             |
| [`color.alphaBlendOn(Color background)`]        | resulting [`Color`] when drawing `color` on top of `background` |
| [`color.withAdditionalOpacity(double opacity)`] | applies `opacity` by multiplying it to the existing opacity     |
| [`color.withAdditionalAlpha(int alpha)`]        | like above, but with an integer alpha                           |
| [`color.hsl`]                                   | ≙ `HSLColor.fromColor(color)`                                   |
| [`color.hsv`]                                   | ≙ `HSVColor.fromColor(color)`                                   |

And if you can't decide on a color, just use [`random.nextColor()`]!

Convert between alpha and opacity with `int.alphaToOpacity` & `double.opacityToAlpha`.

[`brightness.isDark`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyBrightness/isDark.html
[`brightness.isLight`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyBrightness/isLight.html
[`brightness.opposite`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyBrightness/opposite.html
[`brightness.color`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyBrightness/color.html
[`brightness.contrastColor`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyBrightness/contrastColor.html
[`color.alphaBlendOn(Color background)`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyColor/alphaBlendOn.html
[`color.estimatedBrightness`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyColor/estimatedBrightness.html
[`color.isOpaque`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyColor/isOpaque.html
[`color.hsl`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyColor/hsl.html
[`color.hsv`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyColor/hsv.html
[`color.withAdditionalOpacity(double opacity)`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyColor/withAdditionalOpacity.html
[`color.withAdditionalAlpha(int alpha)`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyColor/withAdditionalAlpha.html
[`random.nextColor()`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/RandomColor/nextColor.html


### 🌈 Material Design colors

[Material Design](https://material.io/design/color/text-legibility.html) specifies different opacities of white and black colors to use for text of different emphases on colored backgrounds. You can now use the [`highEmphasisOnColor`][`MaterialColors.highEmphasisOnColor`], [`mediumEmphasisOnColor`][`MaterialColors.mediumEmphasisOnColor`] and [`disabledOnColor`][`MaterialColors.disabledOnColor`] extension getters on [`Color`] to make your text legible!

There are also getters on [`ThemeData`] for contrast colors on the primary, accent, background, and error colors.

[`MaterialColors.disabledOnColor`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/MaterialColors/disabledOnColor.html
[`MaterialColors.highEmphasisOnColor`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/MaterialColors/highEmphasisOnColor.html
[`MaterialColors.mediumEmphasisOnColor`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/MaterialColors/mediumEmphasisOnColor.html


## 🧭 Navigation

Access your navigation-related information via extension methods:

| Extension                 | Shortcut for                              |
| ------------------------- | ----------------------------------------- |
| [`context.navigator`]     | `Navigator.of(context)`                   |
| [`context.rootNavigator`] | `Navigator.of(this, rootNavigator: true)` |
| [`context.modalRoute`]    | `ModalRoute.of(context)`                  |

Push a new route and pop all previous routes (e.g., when signing out the user):

```dart
navigator.pushAndRemoveAll(/* new route */);
// Or using a named route:
navigator.pushNamedAndRemoveAll(/* route name */);
```

Log navigation events to the console:

```dart
MaterialApp(
  navigatorObservers: [LoggingNavigatorObserver()],
  // ...
)
// Prints:
// Navigator: didPush /dashboard → /articles/12345
// Navigator: didPop /dashboard ← /articles/12345
```
> **Note:** This uses the `name` of routes, so it only works with [named routes](https://flutter.dev/docs/cookbook/navigation/named-routes). If you want to handle all your routing declaratively with proper deep links, check out my package [<kbd>🧭 flutter_deep_linking</kbd>] :)

[`context.modalRoute`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/NavigationContext/modalRoute.html
[`context.navigator`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/NavigationContext/navigator.html
[`context.rootNavigator`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/NavigationContext/rootNavigator.html


## 📱 Widgets

### 🔳 Buttons

Did you ever want to show a [progress indicator][`ProgressIndicator`] inside a button? Or were annoyed to conditionally set a [Button][`MaterialButton`]'s [`onPressed`][`MaterialButton.onPressed`] to disable it? Fear no more — <kbd>black_hole_flutter</kbd> has got you covered!

![Button demo](https://github.com/JonasWanke/black_hole_flutter/raw/master/doc/widgets-buttons.gif?raw=true)

In [`FancyFab`] (a [`FloatingActionButton`]), [`FancyFlatButton`], [`FancyOutlineButton`] & [`FancyRaisedButton`], we introduce some new parameters:
- [`isLoading`][`FancyFab.isLoading`]: Setting this to `true` shows a [`CircularProgressIndicator`] and disables this button. You can optionally specify a [`loadingChild`][`FancyFlatButton.loadingChild`] ([`loadingLabel`][`FancyFab.loadingLabel`] on [`FancyFab`]) to show next to the progress indicator.
- `isEnabled`: Settings this to `false` disables this button, even if [`onPressed`][`FancyFab.onPressed`] is set.

[`FancyFab`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyFab-class.html
[`FancyFab.isLoading`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyFab/isLoading.html
[`FancyFab.loadingLabel`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyFab/loadingLabel.html
[`FancyFab.onPressed`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyFab/onPressed.html
[`FancyFlatButton`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyFlatButton-class.html
[`FancyFlatButton.loadingChild`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyFlatButton/loadingChild.html
[`FancyOutlineButton`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyOutlineButton-class.html
[`FancyRaisedButton`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyRaisedButton-class.html


### 🥔 ChipGroup

<img src="https://github.com/JonasWanke/black_hole_flutter/raw/master/doc/widgets-chipGroup.png?raw=true" width="300px" alt="ChipGroup demo" />

Wraps multiple chips and can optionally show a title above these.


### 🥙 FillOrWrap

<img src="https://github.com/JonasWanke/black_hole_flutter/raw/master/doc/widgets-fillOrWrap.png?raw=true" width="300px" alt="FillOrWrap demo" />

A layout with two different behaviors:
- By default, all children are positioned **next to each other with equal widths**. This is comparable to a [`Row`] with all children wrapped in [`Expanded`].
- If the children are too wide to fit in a single line, or one child would become smaller than its reported minimum width, the children get positioned **below each other** ("wrapped"). This is similar to a [`Column`] with [`MainAxisSize.min`].


### ↔ SeparatedButtons

<img src="https://github.com/JonasWanke/black_hole_flutter/raw/master/doc/widgets-separatedButtons.png?raw=true" width="300px" alt="SeparatedButtons demo" />

A container wrapping multiple buttons with an interpunct (`·`) between each one. It's recommended to use [`FlatButton`]s as children.


### 📚 TitleAndSubtitle

Did you ever want to show a subtitle (in addition to a main title) in your `AppBar`? Use [`TitleAndSubtitle`] (very creative name, I know):

```dart
AppBar(
  title: TitleAndSubtitle(
    title: Text('My title'),
    subtitle: Text('My optional subtitle'),
  ),
)
```

[`TitleAndSubtitle`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancyFab-class.html


## 🖼 RenderObject

When writing a custom layout, you might find this extension on [`ContainerRenderObjectMixin`] useful:

| Extension                               | Explanation                                              |
| --------------------------------------- | -------------------------------------------------------- |
| [`containerRenderObjectMixin.children`] | Returns all children using `firstChild` and `childAfter` |

[`containerRenderObjectMixin.children`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/ContainerRenderObjectMixinBlackHole/children.html


## ↕ Size

| Extension                            | Explanation                                              |
| ------------------------------------ | -------------------------------------------------------- |
| [`size.diagonal`]                    | length of the diagonal of a rectangle with this [`Size`] |
| [`size.squaredDiagonal`]             | ≙ `size.diagonal * size.diagonal`                        |
| [`size.coerceAtLeast(Size minimum)`] | Ensures `size` is not smaller than `minimum` in any axis |
| [`size.coerceAtMost(Size maximum)`]  | Ensures `size` is not larger than `minimum` in any axis  |

[`size.diagonal`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancySize/diagonal.html
[`size.squaredDiagonal`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancySize/squaredDiagonal.html
[`size.coerceAtLeast(Size minimum)`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancySize/coerceAtLeast.html
[`size.coerceAtMost(Size maximum)`]: https://pub.dev/documentation/black_hole_flutter/latest/black_hole_flutter/FancySize/coerceAtMost.html


[<kbd>🧭 flutter_deep_linking</kbd>]: https://pub.dev/packages/flutter_deep_linking
<!-- Flutter -->
[`BuildContext`]: https://api.flutter.dev/flutter/widgets/BuildContext-class.html
[`Brightness`]: https://api.flutter.dev/flutter/dart-ui/Brightness-class.html
[`CircularProgressIndicator`]: https://api.flutter.dev/flutter/material/CircularProgressIndicator-class.html
[`Color`]: https://api.flutter.dev/flutter/dart-ui/Color-class.html
[`Colors`]: https://api.flutter.dev/flutter/material/Colors-class.html
[`Column`]: https://api.flutter.dev/flutter/widgets/Column-class.html
[`ContainerRenderObjectMixin`]: https://api.flutter.dev/flutter/rendering/ContainerRenderObjectMixin-mixin.html
[`Expanded`]: https://api.flutter.dev/flutter/widgets/Expanded-class.html
[`FlatButton`]: https://api.flutter.dev/flutter/material/FlatButton-class.html
[`FloatingActionButton`]: https://api.flutter.dev/flutter/material/FloatingActionButton-class.html
[`MainAxisSize.min`]: https://api.flutter.dev/flutter/rendering/MainAxisSize-class.html#min
[`MaterialButton`]: https://api.flutter.dev/flutter/material/FlatButton-class.html
[`MaterialButton.onPressed`]: https://api.flutter.dev/flutter/material/MaterialButton/onPressed.html
[`ProgressIndicator`]: https://api.flutter.dev/flutter/material/ProgressIndicator-class.html
[`Row`]: https://api.flutter.dev/flutter/widgets/Row-class.html
[`Size`]: https://api.flutter.dev/flutter/dart-ui/Size-class.html
[`Theme.of`]: https://api.flutter.dev/flutter/material/Theme/of.html
[`ThemeData`]: https://api.flutter.dev/flutter/material/ThemeData-class.html
