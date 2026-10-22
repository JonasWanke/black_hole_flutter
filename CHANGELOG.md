# Changelog

All notable changes to this project will be documented in this file.

This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

<!-- Template:
## NEW · 2026-xx-xx

### ⚠️ BREAKING CHANGES
### 🎉 New Features
### ⚡ Changes
### 🐛 Bug Fixes
### 📜 Documentation updates
### 🏗️ Refactoring
### 📦 Build & CI
-->

## 2.0.0 · 2026-10-22

### ⚠️ BREAKING CHANGES
- migrate from `flutter/material.dart` to `material_ui` ^1.8.0 ([`bf6d1df`](https://github.com/JonasWanke/black_hole_flutter/commit/bf6d1df6dca2a3dc6c3de988bb964eea701697e8))
- **color_material:** remove deprecated `ThemeMaterialColors` extension on `ThemeData` ([`d877925`](https://github.com/JonasWanke/black_hole_flutter/commit/d8779255cec221d09c8b8340087625513c05cb93))

### ⚡ Changes
- **context:** mark `context.getModalRoute()` as `@optionalTypeArgs` ([`188ffd8`](https://github.com/JonasWanke/black_hole_flutter/commit/188ffd8d26b9f1fb9bbd004f73e833ae5923894a))

### 🐛 Bug Fixes
- **widgets:** Loosen constraints for `LeftCenterRight`'s children ([`d30f048`](https://github.com/JonasWanke/black_hole_flutter/commit/d30f0487ef0a8225752d2a3c1c161263e2a0ab78))

### 📦 Build & CI
- upgrade to Flutter v3.47.0, Dart v3.13.0 ([`eb68363`](https://github.com/JonasWanke/black_hole_flutter/commit/eb6836389130c059f4e3258556f06fa51d147076))

## 1.2.0 · 2026-01-02

### 🎉 New Features
- add `menuController.toggle()` ([`ecb9b20`](https://github.com/JonasWanke/black_hole_flutter/commit/ecb9b20fb234989a28f31d25b66cec2752fd8a76))
- **color_material:** add `color.withHighEmphasisAlpha`, `.withMediumEmphasisAlpha`, `.withDisabledAlpha` ([`0ef819c`](https://github.com/JonasWanke/black_hole_flutter/commit/0ef819cbdb486b23280e9b65a0c332301b1ebb46))
- **color_material:** add `MaterialColors.highEmphasisTextAlpha`, `.mediumEmphasisTextAlpha`, `.disabledTextAlpha` ([`66572ed`](https://github.com/JonasWanke/black_hole_flutter/commit/66572ed621a4220ef8c2184109884c7ef98f3a7a))
- **context:** add `theme.colorScheme` ([`250b530`](https://github.com/JonasWanke/black_hole_flutter/commit/250b5306104522a01d77d186f9f85b6270608332))
- **widgets:** add missing `key` parameters to `LeftCenterRight`, `DragIndicator` ([`ec31f0d`](https://github.com/JonasWanke/black_hole_flutter/commit/ec31f0d7196d382ea3225fb29378c43bf8f35e91))
- **widgets:** add `Circle` ([`f8e9379`](https://github.com/JonasWanke/black_hole_flutter/commit/f8e937955c2755f756991d8790bdff4823d0ec4b))
- **widgets/buttons** add missing variants ([`fac0bfc`](https://github.com/JonasWanke/black_hole_flutter/commit/fac0bfc101b1c2c116131246ee13a164f941bd1e), [`74d873e`](https://github.com/JonasWanke/black_hole_flutter/commit/74d873ef291b9fb108fc54c25ccbcd1355875ab4), [`9a8a3a7`](https://github.com/JonasWanke/black_hole_flutter/commit/9a8a3a70030145a4a7c58705d389d208e70f3af3))

### ⚡ Changes
- **color_material:** deprecate `ThemeMaterialColors` containing `onPrimary`, `highEmphasisOnPrimary`, `mediumEmphasisOnPrimary`, `disabledOnPrimary`, `onSecondary`, `highEmphasisOnSecondary`, `mediumEmphasisOnSecondary`, `disabledOnSecondary`, `onBackground`, `highEmphasisOnBackground`, `mediumEmphasisOnBackground`, `disabledOnBackground`, `onError`, `highEmphasisOnError`, `mediumEmphasisOnError`, and `disabledOnError` ([`d232dfd`](https://github.com/JonasWanke/swipeable_page_route/commit/d232dfdc7e3f845919139ecbb138f58156f3dd49))

### 📦 Build & CI

- upgrade to Flutter v3.38.0, Dart v3.10.0 ([`c96d94c`](https://github.com/JonasWanke/swipeable_page_route/commit/c96d94cb366de2827a1aa72c9281bd413db6c301))

## 1.1.0 · 2023-10-24

### 🎉 New Features
- **widgets:** add `LeftCenterRight` ([#20](https://github.com/JonasWanke/black_hole_flutter/pull/20))
- **widgets:** make `FillOrWrap`'s constructor const ([#21](https://github.com/JonasWanke/black_hole_flutter/pull/21))

### 📦 Build & CI
- upgrade to Flutter v3.10.0, Dart v3.0.0

## 1.0.3 · 2023-05-11

### 🐛 Bug Fixes
- **widgets:** remove const from `FillOrWrap`'s constructor ([`8eb3ce3`](https://github.com/JonasWanke/black_hole_flutter/commit/8eb3ce31ab8265544828d43af082763f0957bf45)), closes: [#16](https://github.com/JonasWanke/black_hole_flutter/issues/16)

## 1.0.2 · 2023-05-11

### ⚡ Changes
- delegate accent color getters to secondary ([`78f72f2`](https://github.com/JonasWanke/black_hole_flutter/commit/78f72f2939a8c9715181b15c23d5d3e9cedc4c84))

## 1.0.1 · 2023-01-25

### 🐛 Bug Fixes
- actually use `context.showSimpleSnackBar(…)`'s `action` parameter ([`cf95317`](https://github.com/JonasWanke/black_hole_flutter/commit/cf95317d57a58f3a66abbfc186261cfab7e3b03a))

### 📦 Build & CI
- upgrade to Flutter v3.7.0, Dart v2.19.0 ([`e400915`](https://github.com/JonasWanke/black_hole_flutter/commit/e400915484b32f14463694f8bd1636d7bc9b1dfb))

## 1.0.0 · 2023-01-24

### ⚠️ BREAKING CHANGES
- remove `ChipGroup` → use Flutter's [`Wrap`](https://api.flutter.dev/flutter/widgets/Wrap-class.html) instead ([`8f89c63`](https://github.com/JonasWanke/black_hole_flutter/commit/8f89c63b0cf30b2c967a7015459f33facd46b84a))
- remove `SeparatedButtons` → use Flutter's [`Wrap`](https://api.flutter.dev/flutter/widgets/Wrap-class.html) instead ([`5cf0277`](https://github.com/JonasWanke/black_hole_flutter/commit/5cf0277881d06ee0347f9754921b88c85b06494c))
- remove `TitleAndSubtitle` ([`41cc403`](https://github.com/JonasWanke/black_hole_flutter/commit/41cc4030dd1f9a6b4a24fcde0b01789e36dc05ff))
- upgrade to Flutter: `>=3.3.0`, Dart `>=2.18.0 <3.0.0` ([`5c7230e`](https://github.com/JonasWanke/black_hole_flutter/commit/5c7230e8c328678ef8679002c62d9c09c8a466ac))

### 🎉 New Features
- add `ReportingNavigatorObserver` ([`0dcd1ff`](https://github.com/JonasWanke/black_hole_flutter/commit/0dcd1ff44874bf69c833b410341f69e1c71c55b9))
- add `CenterOrScroll` ([`f52667c`](https://github.com/JonasWanke/black_hole_flutter/commit/f52667ccea72a9eea3c4ab426bbe8c586ec3c8a8))
- add `expandOrScroll.key` and `.scrollDirection` ([`1f6f9d8`](https://github.com/JonasWanke/black_hole_flutter/commit/1f6f9d884977b1568aa4b6b91e9325d48672bd31))
- add `SnackBarAction? action` parameter to `buildContext.` and `scaffoldMessengerState.showSimpleSnackBar(…)` ([`e0bbfa2`](https://github.com/JonasWanke/black_hole_flutter/commit/e0bbfa23c3bc04c13dd0f5fcc24378593e34742c))

## 0.3.5 · 2022-01-05

### 📦 Build & CI
- remove dependency on the discontinued [<kbd>supercharged</kbd>](https://pub.dev/packages/supercharged) ([`b1831db`](https://github.com/JonasWanke/black_hole_flutter/commit/b1831db8acedd2f46170333d7080a4316461e0cc))

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
- **context:** add `buildContext.showSimpleSnackBar`, `.showSnackBar`, and `scaffoldMessengerState.showSimpleSnackBar`
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
