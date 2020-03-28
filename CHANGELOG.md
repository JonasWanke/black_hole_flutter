# Changelog

All notable changes to this project will be documented in this file.

This project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).


<!-- Template:
## [NEW](https://github.com/JonasWanke/black_hole_flutter/compare/vOLD...vNEW) · 2020-xx-xx
### 🎉 New Features
### ⚡ Changes
### 🐛 Bug Fixes
### 📜 Documentation updates
### 🏗 Refactoring
### 📦 Build & CI
-->

## [Unreleased](https://github.com/JonasWanke/black_hole_flutter/compare/v0.2.3...dev)


## [0.2.3](https://github.com/JonasWanke/black_hole_flutter/compare/v0.2.2...v0.2.3) · 2020-03-28

### 🎉 New Features
- **buttons:** add `icon`-variants to `FancyFlatButton`, `FancyOutlineButton` & `FancyRaisedButton`
- **buttons:** add `textColor` to all fancy buttons
- **buttons:** add `FancyOutlineButton.borderSide`, `FancyOutlineButton.highlightedBorderColor`
- **color:** add `Color.withAdditionalOpacity`, `Color.withAdditionalAlpha`
- **color:** add `contrastSystemUiOverlayStyle` getters to `Brightness`, `Color`


## [0.2.2](https://github.com/JonasWanke/black_hole_flutter/compare/v0.2.1...v0.2.2) · 2020-03-26

### 🎉 New Features
- add `Color.hsl`, `Color.hsv` extensions


## [0.2.1](https://github.com/JonasWanke/black_hole_flutter/compare/v0.2.0...v0.2.1) · 2020-03-25

### 🐛 Bug Fixes
- correctly display `FancyFab.extended`


## [0.2.0](https://github.com/JonasWanke/black_hole_flutter/compare/v0.1.3...v0.2.0) · 2020-03-24

### ⚠ BREAKING CHANGES
- fix naming: `FancyFab.icon` is now called `FancyFab.child`

### 🐛 Bug Fixes
- `FancyFab`'s background color is now the same as that of other buttons

### 📜 Documentation updates
- add button demo to README

### 🏗 Refactoring
- `FancyButton` logic is now handled in their base `_FancyButton`


## [0.1.3](https://github.com/JonasWanke/black_hole_flutter/compare/v0.1.2...v0.1.3) · 2020-03-22

### ⚡ Changes
- remove unused parameter from `NavigatorState.pushNamedAndRemoveAll`


## [0.1.2](https://github.com/JonasWanke/black_hole_flutter/compare/v0.1.1...v0.1.2) · 2020-03-22

### 🐛 Bug Fixes
- add missing export


## [0.1.1](https://github.com/JonasWanke/black_hole_flutter/compare/v0.1.0...v0.1.1) · 2020-03-22

### 🎉 New Features
- add `NavigatorState.pushAndRemoveAll`, `NavigatorState.pushNamedAndRemoveAll`
- **example:** add example app showcasing new widgets


## [0.1.0](https://github.com/JonasWanke/black_hole_flutter/compare/v0.0.1...v0.1.0) · 2020-03-13

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
