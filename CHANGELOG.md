# Changelog

All notable changes to this project will be documented in this file.

This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

<!-- Template:
## NEW · 2023-xx-xx

### ⚠️ BREAKING CHANGES
### 🎉 New Features
### ⚡ Changes
### 🐛 Bug Fixes
### 📜 Documentation updates
### 🏗️ Refactoring
### 📦 Build & CI
-->

## 1.0.2 · 2023-05-11

### ⚡ Changes
* delegate accent color getters to secondary ([`78f72f2`](https://github.com/JonasWanke/black_hole_flutter/commit/78f72f2939a8c9715181b15c23d5d3e9cedc4c84))

## 1.0.1 · 2023-01-25

### 🐛 Bug Fixes
* actually use `context.showSimpleSnackBar(…)`'s `action` parameter ([`cf95317`](https://github.com/JonasWanke/black_hole_flutter/commit/cf95317d57a58f3a66abbfc186261cfab7e3b03a))

### 📦 Build & CI
* upgrade to Flutter v3.7.0, Dart v2.19.0 ([`e400915`](https://github.com/JonasWanke/black_hole_flutter/commit/e400915484b32f14463694f8bd1636d7bc9b1dfb))

## 1.0.0 · 2023-01-24

### ⚠️ BREAKING CHANGES
* remove `ChipGroup` → use Flutter's [`Wrap`](https://api.flutter.dev/flutter/widgets/Wrap-class.html) instead ([`8f89c63`](https://github.com/JonasWanke/black_hole_flutter/commit/8f89c63b0cf30b2c967a7015459f33facd46b84a))
* remove `SeparatedButtons` → use Flutter's [`Wrap`](https://api.flutter.dev/flutter/widgets/Wrap-class.html) instead ([`5cf0277`](https://github.com/JonasWanke/black_hole_flutter/commit/5cf0277881d06ee0347f9754921b88c85b06494c))
* remove `TitleAndSubtitle` ([`41cc403`](https://github.com/JonasWanke/black_hole_flutter/commit/41cc4030dd1f9a6b4a24fcde0b01789e36dc05ff))
* upgrade to Flutter: `>=3.3.0`, Dart `>=2.18.0 <3.0.0` ([`5c7230e`](https://github.com/JonasWanke/black_hole_flutter/commit/5c7230e8c328678ef8679002c62d9c09c8a466ac))

### 🎉 New Features
* add `ReportingNavigatorObserver` ([`0dcd1ff`](https://github.com/JonasWanke/black_hole_flutter/commit/0dcd1ff44874bf69c833b410341f69e1c71c55b9))
* add `CenterOrScroll` ([`f52667c`](https://github.com/JonasWanke/black_hole_flutter/commit/f52667ccea72a9eea3c4ab426bbe8c586ec3c8a8))
* add `expandOrScroll.key` and `.scrollDirection` ([`1f6f9d8`](https://github.com/JonasWanke/black_hole_flutter/commit/1f6f9d884977b1568aa4b6b91e9325d48672bd31))
* add `SnackBarAction? action` parameter to `buildContext.` and `scaffoldMessengerState.showSimpleSnackBar(…)` ([`e0bbfa2`](https://github.com/JonasWanke/black_hole_flutter/commit/e0bbfa23c3bc04c13dd0f5fcc24378593e34742c))

## 0.3.5 · 2022-01-05

### 📦 Build & CI
* remove dependency on the discontinued [<kbd>supercharged</kbd>](https://pub.dev/packages/supercharged) ([`b1831db`](https://github.com/JonasWanke/black_hole_flutter/commit/b1831db8acedd2f46170333d7080a4316461e0cc))

## 0.3.4 · 2021-12-04

### 🎉 New Features
- **widgets:** add `expandOrScroll.scrollController`

## 0.3.3 · 2021-10-14

### 🎉 New Features
- **widgets:** add `separatedButtons.textStyle`

### ⚡ Changes
- **color_material:** Deprecate `themeData.onAccent`, `.highEmphasisOnAccent`, `.mediumEmphasisOnAccent`, and `.disabledOnAccent`. Use `themeData.onSecondary`, `.highEmphasisOnSecondary`, `.mediumEmphasisOnSecondary`, or `.disabledOnSecondary` instead.

### 📦 Build & CI
- update lints
- update issue and PR templates
- add build & lint CI
- **example:** update Android wrapper

## 0.3.2 · 2021-06-01

### 🎉 New Features
- **content:** add `buildContext.showSimpleSnackBar`, `.showSnackBar`, and `scaffoldMessengerState.showSimpleSnackBar`
- **widgets:** add `ExpandOrScroll`

### 📦 Build & CI
- depend on the stable Dart SDK `>=2.12.0 <3.0.0`
- depend on the stable version of <kbd>supercharged</kbd>: `2.0.0`

## 0.3.1 · 2021-04-14

### 🐛 Bug Fixes
- **navigation:** allow nullable route return types in `pushAndRemoveAll` and `pushNamedAndRemoveAll`


## 0.3.0 · 2021-02-25

### ⚠️ BREAKING CHANGES
- change SDK constraint to `>=2.12.0-0 <3.0.0` to enable null-safety
- **navigation:** replace `BuildContext.modalRoute` with `BuildContext.getModalRoute<T>()` to return a strongly typed `ModalRoute<T>?` (instead of `ModalRoute<dynamic>?`)
- **widgets/buttons:** replace `FancyTextButton`, `FancyOutlineButton`, and `FancyRaisedButton` with `FancyFlatButton`, `FancyOutlinedButton`, and `FancyElevatedButton`, respectively
  - These buttons no longer accept individual style parameters like `textColor`, `color`, or `shape`, but instead accept an optional `ButtonStyle? style`, just like the original Material Design buttons


## 0.2.16 · 2020-11-24

### 🎉 New Features
- **context:** add `BuildContext.scaffoldMessenger` & `BuildContext.scaffoldMessengerOrNull`

### 📦 Build & CI
- support Flutter `>=1.24.0-7.0.pre`


## 0.2.15 · 2020-10-16

### 🎉 New Features
- **bottom_sheet:** export DragIndicator

### 🐛 Bug Fixes
- **bottom_sheet:** expand content to fill cross axis


## 0.2.14 · 2020-10-01

### 🎉 New Features
- **widgets/buttons:** add customizable `loadingIndicator`
- **widgets/buttons:** allow reversing extended FAB's child order (to show the icon on the right)

### ⚡ Changes
- **widgets/buttons:** choose disabled FAB's foreground color based on the background color


## 0.2.13 · 2020-08-20

### 🎉 New Features
- **widgets/buttons:** add `shape` parameter

### 📦 Build & CI
- update <kbd>dartx</kbd> to `^0.5.0`


## 0.2.12 · 2020-06-11

### 🎉 New Features
- **context:** add `BuildContext.focusScope`

### 📦 Build & CI
- update <kbd>dartx</kbd> to `^0.4.0`
- update <kbd>Flutter</kbd> to `>=1.17.0`


## 0.2.11 · 2020-05-18

### 🎉 New Features
- **async:** add `AsyncSnapshot.hasNoData`, `AsyncSnapshot.hasNoError`
- **color:** add `Random.nextColorHsl()`, `Random.nextColorHsv()`
- **context:** add `BuildContext.overlay`

### 📦 Build & CI
- **example:** update packages


## 0.2.10 · 2020-04-30

### 🎉 New Features
- **widgets:** add `TitleAndSubtitle`

### 📦 Build & CI
- update <kbd>dartx</kbd> to `^0.3.0`


## 0.2.9 · 2020-04-29

### 🎉 New Features
- **color:** add `Color.isOpaque`
- **color:** add `int.alphaToOpacity`, `double.opacityToAlpha`
- **context:** add `BuildContext.materialLocalizations`
- **context:** add `BuildContext.scaffoldOrNull`
- **size:** add `Size.coerceAtLeast`, `Size.coerceAtMost`


## 0.2.8 · 2020-04-20

### 🎉 New Features
- **context:** add `BuildContext.locale`
- **render_object:** add `ContainerRenderObjectMixin.children`


## 0.2.7 · 2020-04-08

### 🎉 New Features
- **color:** add `Color.isDark`, `Color.isLight`

### 📜 Documentation updates
- fill README with missing extensions and widgets


## 0.2.6 · 2020-04-07

### 🎉 New Features
- **color:** allow fixed red, green or blue values in `Random.nextColor()`
- **fillOrWrap:** create `FillOrWrap` widget
- **navigation:** add `LoggingNavigatorObserver`


## 0.2.5 · 2020-04-02

### 🎉 New Features
- **color:** add `Color.alphaBlendOn()`
- **color:** add `Random.nextColor()`


## 0.2.4 · 2020-04-02

### 🐛 Bug Fixes
- **widgets/buttons:** use default child for extended buttons while not loading


## 0.2.3 · 2020-03-28

### 🎉 New Features
- **color:** add `Color.withAdditionalOpacity`, `Color.withAdditionalAlpha`
- **color:** add `contrastSystemUiOverlayStyle` getters to `Brightness`, `Color`
- **widgets/buttons:** add `icon`-variants to `FancyFlatButton`, `FancyOutlineButton` & `FancyRaisedButton`
- **widgets/buttons:** add `textColor` to all fancy buttons
- **widgets/buttons:** add `FancyOutlineButton.borderSide`, `FancyOutlineButton.highlightedBorderColor`


## 0.2.2 · 2020-03-26

### 🎉 New Features
- add `Color.hsl`, `Color.hsv` extensions


## 0.2.1 · 2020-03-25

### 🐛 Bug Fixes
- correctly display `FancyFab.extended`


## 0.2.0 · 2020-03-24

### ⚠️ BREAKING CHANGES
- fix naming: `FancyFab.icon` is now called `FancyFab.child`

### 🐛 Bug Fixes
- `FancyFab`'s background color is now the same as that of other buttons

### 📜 Documentation updates
- add button demo to README

### 🏗️ Refactoring
- `FancyButton` logic is now handled in their base `_FancyButton`


## 0.1.3 · 2020-03-22

### ⚡ Changes
- remove unused parameter from `NavigatorState.pushNamedAndRemoveAll`


## 0.1.2 · 2020-03-22

### 🐛 Bug Fixes
- add missing export


## 0.1.1 · 2020-03-22

### 🎉 New Features
- add `NavigatorState.pushAndRemoveAll`, `NavigatorState.pushNamedAndRemoveAll`
- **example:** add example app showcasing new widgets


## 0.1.0 · 2020-03-13

### 🎉 New Features
- add `Size.diagonal`, `Size.squaredDiagonal`
- allow loading buttons without a `loadingChild`

### ⚡ Changes
- rename `LoadingRaisedButton` to `FancyRaisedButton`
- make `FancyFab.isExtended` private

### 📜 Documentation updates
- fill the README with a package overview


## 0.0.1 · 2020-03-12
Initial release 🎉
