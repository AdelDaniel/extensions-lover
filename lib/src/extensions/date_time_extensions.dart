// src/extensions/date_time_extensions.dart

/// Helper Methods for the DateTime Data Type
extension DateTimeExtensions on DateTime {
  DateTime get _now => DateTime.now();

  /// Check if the date is today
  bool get isToday {
    final now = _now;
    return year == now.year && month == now.month && day == now.day;
  }

  /// Check if the date is yesterday
  bool get isYesterday {
    final yesterday = _now.subtract(const Duration(days: 1));
    return year == yesterday.year &&
        month == yesterday.month &&
        day == yesterday.day;
  }

  /// Check if the date is tomorrow
  bool get isTomorrow {
    final tomorrow = _now.add(const Duration(days: 1));
    return year == tomorrow.year &&
        month == tomorrow.month &&
        day == tomorrow.day;
  }
}
