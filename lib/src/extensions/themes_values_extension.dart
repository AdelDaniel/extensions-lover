// src/extensions/themes_values_extension.dart
import 'dart:io';

import 'package:flutter/material.dart';

/// Convenience accessors for theme, typography, colors, and platform values
/// from a [BuildContext].
extension ThemesValuesExtension on BuildContext {
  ThemeData get _themeData => Theme.of(this);

  /// Display styles are the largest text styles in the theme.
  /// Use them for short, prominent text such as hero headlines.
  TextStyle? get displayLarge => _themeData.textTheme.displayLarge;

  /// The medium display text style from the current theme.
  TextStyle? get displayMedium => _themeData.textTheme.displayMedium;

  /// The small display text style from the current theme.
  TextStyle? get displaySmall => _themeData.textTheme.displaySmall;

  /// Headline styles are smaller than display styles.
  /// They're best-suited for short, high-emphasis text on smaller screens.
  TextStyle? get headlineLarge => _themeData.textTheme.headlineLarge;

  /// The medium headline text style from the current theme.
  TextStyle? get headlineMedium => _themeData.textTheme.headlineMedium;

  /// The small headline text style from the current theme.
  TextStyle? get headlineSmall => _themeData.textTheme.headlineSmall;

  /// Titles are smaller than headline styles
  /// and should be used for shorter, medium-emphasis text.
  TextStyle? get titleLarge => _themeData.textTheme.titleLarge;

  /// The medium title text style from the current theme.
  TextStyle? get titleMedium => _themeData.textTheme.titleMedium;

  /// The small title text style from the current theme.
  TextStyle? get titleSmall => _themeData.textTheme.titleSmall;

  /// The large body text style from the current theme.
  TextStyle? get bodyLarge => _themeData.textTheme.bodyLarge;

  /// The medium body text style from the current theme.
  TextStyle? get bodyMedium => _themeData.textTheme.bodyMedium;

  /// The small body text style from the current theme.
  TextStyle? get bodySmall => _themeData.textTheme.bodySmall;

  /// Label styles are intended for compact UI text, such as buttons,
  /// tabs, chips, and form labels.
  TextStyle? get labelLarge => _themeData.textTheme.labelLarge;

  /// The medium label text style from the current theme.
  TextStyle? get labelMedium => _themeData.textTheme.labelMedium;

  /// The small label text style from the current theme.
  TextStyle? get labelSmall => _themeData.textTheme.labelSmall;

  /// Whether the current theme uses light brightness.
  bool get isLight => _themeData.brightness == Brightness.light;

  /// The primary color from the current theme.
  Color get primaryColor => _themeData.primaryColor;

  /// A theme-aware color that switches between secondary and primary colors.
  Color get dynamicThemeColor => isLight ? secondaryColor : primaryColor;

  /// Returns black in light mode and white in dark mode.
  Color get dynamicWhiteBlackColor => isLight ? Colors.black : Colors.white;

  /// Returns white in light mode and black in dark mode.
  Color get dynamicBlackWhiteColor => isLight ? Colors.white : Colors.black;

  /// Whether the app is running on a desktop platform.
  bool get isDesktop =>
      Platform.isMacOS || Platform.isLinux || Platform.isWindows;

  /// Whether the app is running on a mobile platform.
  bool get isMobile => Platform.isIOS || Platform.isAndroid;

  /// The resolved color of the theme's large body text style.
  Color get textColor => themeData.textTheme.bodyLarge!.color!;

  /// The icon theme color with reduced opacity for secondary emphasis.
  Color get secondaryColor =>
      _themeData.iconTheme.color!.withValues(alpha: 0.7);

  /// The current [ThemeData] from this context.
  ThemeData get themeData => _themeData;

  /// Whether the current screen width matches the tablet breakpoint.
  bool get isTablet => MediaQuery.of(this).size.width >= 600;
}
