import 'package:flutter/material.dart';

/// u can use this values like: context.width
extension MediaQueryValuesExtensions on BuildContext {
  /// use: context.height
  /// instead of: MediaQuery.of(this).size.height
  double get height => MediaQuery.of(this).size.height;

  /// use: context.width
  /// instead of: MediaQuery.of(this).size.width
  double get width => MediaQuery.of(this).size.width;

  /// use: context.toPadding
  /// instead of: MediaQuery.of(this).viewPadding.top
  double get toPadding => MediaQuery.of(this).viewPadding.top;

  /// use: context.bottom
  /// instead of: MediaQuery.of(this).viewInsets.bottom
  double get bottom => MediaQuery.of(this).viewInsets.bottom;

  /// Computes the scaled font size (in logical pixels) with the given unscaled
  /// fontSize (in logical pixels).
  /// use: context.textScale(double fontSize)
  /// instead of: MediaQuery.of(this).textScaler.scale(fontSize)
  double textScale(double fontSize) =>
      MediaQuery.of(this).textScaler.scale(fontSize);

  /// return (heightPercentage / 100) * height
  double hp(double heightPercentage) => (heightPercentage / 100) * height;

  /// return (widthPercentage / 100) * width
  double wp(double widthPercentage) => (widthPercentage / 100) * width;
}
