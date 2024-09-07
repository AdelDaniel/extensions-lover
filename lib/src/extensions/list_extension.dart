/// Extensions on Lists
extension ListExtension on List<dynamic>? {
  /// true if list is Null or Empty list
  /// false: Null list
  /// false: Empty List
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  /// if the list Not equal null and contains data
  bool get isNotNullNotEmpty => !isNullOrEmpty;
}
