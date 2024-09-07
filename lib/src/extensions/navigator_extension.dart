import 'package:flutter/material.dart';

extension NavigatorExtension on BuildContext {
  Future<T?> pushNamed<T extends Object?>(
    String routeName, {
    Object? arguments,
  }) async {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  void pop<T extends Object?>([T? result]) => Navigator.of(this).pop();
}
