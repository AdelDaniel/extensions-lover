// src/extensions/string_extensions.dart
import 'package:intl/intl.dart';

/// Helper Method for the String Data Type
extension StringExtensions on String {
  /// Concatenate Asterisk At The End Of the String
  String get concatenateAsterisk => '$this *';

  /// Concatenate Colon At The End Of the String
  String get concatenateColon => '$this:';

  /// Concatenate Exclamation At The End Of the String
  String get concatenateExclamation => '$this!';

  /// Concatenate Comma At The End Of the String
  String get concatenateComma => '$this,';

  /// Concatenate Dash At The End Of the String
  String get concatenateDash => '$this-';

  /// Concatenate Hash At The End Of the String
  String get concatenateHash => '$this#';

  /// Concatenate Space At The End Of the String
  String get concatenateSpace => '$this ';

  /// Concatenate Newline At The End Of the String
  String get concatenateNewline => '$this\n';

  /// Concatenate Brackets Between String
  String get concatenateBrackets => '($this)';

  /// Concatenate Question Mark English At End
  String get concatenateQuestionMarkEnglish => '$this?';

  /// Concatenate Dollar Sign
  String get concatenateDollarSign => '\$$this';

  /// Concatenate Question Mark Arabic At End
  String get concatenateQuestionMarkArabic => '$this؟';

  static final NumberFormat numberFormat = NumberFormat.decimalPattern();

  String get separateNumberWithComma {
    return numberFormat.format(num.parse(this));
  }

  /// Convert the latin digits to Arabic ones
  /// arabicDigits["0"]
  /// '0': '\u0660',
  /// '1': '\u0661',
  /// '2': '\u0662',
  /// '3': '\u0663',
  /// '4': '\u0664',
  /// '5': '\u0665',
  /// '6': '\u0666',
  /// '7': '\u0667',
  /// '8': '\u0668',
  /// '9': '\u0669',
  static const Map<String, String> arabicDigits = <String, String>{
    '0': '\u0660',
    '1': '\u0661',
    '2': '\u0662',
    '3': '\u0663',
    '4': '\u0664',
    '5': '\u0665',
    '6': '\u0666',
    '7': '\u0667',
    '8': '\u0668',
    '9': '\u0669',
  };

  String toArabicDigitsConverter() {
    final String number = toString();
    final StringBuffer sb = StringBuffer();
    for (int i = 0; i < number.length; i++) {
      sb.write(arabicDigits[number[i]] ?? number[i]);
    }
    return sb.toString();
  }

  bool isMediaVideo() {
    return [
      '3gp',
      'avi',
      'mpg',
      'mpeg',
      'webm',
      'ogg',
      'flv',
      'm4v',
      'mvp',
      'mp4',
      'wmv',
      'mkv',
      'mov',
      'ts',
    ].any((extension) => toLowerCase().endsWith(extension));
  }

  /// Take the first [number] of characters from the string
  /// If [number] is greater than string length, returns the entire string
  /// If [number] is negative or zero, returns an empty string
  ///
  /// Example:
  /// ```dart
  /// 'Hello World'.takeChars(5) // Returns 'Hello'
  /// 'Hi'.takeChars(10) // Returns 'Hi'
  /// 'Test'.takeChars(0) // Returns ''
  /// ```
  String takeChars(int number) {
    if (number <= 0) return '';
    if (number >= length) return this;
    return substring(0, number);
  }

  /// Take the first [number] of words from the string
  /// Words are separated by whitespace
  /// If [number] is greater than word count, returns the entire string
  /// If [number] is negative or zero, returns an empty string
  ///
  /// Example:
  /// ```dart
  /// 'Hello World from Dart'.takeWords(2) // Returns 'Hello World'
  /// 'Single'.takeWords(5) // Returns 'Single'
  /// 'Test String'.takeWords(0) // Returns ''
  /// ```
  String takeWords(int number) {
    if (number <= 0) return '';
    final words = split(RegExp(r'\s+'));
    if (number >= words.length) return this;
    return words.take(number).join(' ');
  }
}

extension NullStringExtensions on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
}
