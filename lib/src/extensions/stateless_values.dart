import 'package:flutter/material.dart';

/// you can use this values like: context.width
extension MediaQueryValues on State {
  /// use --> context.height
  /// instead of  MediaQuery.of(context).size.height
  double height(BuildContext context) => MediaQuery.of(context).size.height;

  /// use --> context.width
  /// instead of  MediaQuery.of(context).size.width
  double width(BuildContext context) => MediaQuery.of(context).size.width;

  /// use --> context.toPadding
  /// instead of --> MediaQuery.of(context).viewPadding.top
  double toPadding(BuildContext context) =>
      MediaQuery.of(context).viewPadding.top;

  /// use --> context.bottom
  /// instead of --> MediaQuery.of(context).viewInsets.bottom
  double bottom(BuildContext context) =>
      MediaQuery.of(context).viewInsets.bottom;
}
