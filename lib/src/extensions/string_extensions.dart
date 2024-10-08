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
}

extension NullStringExtensions on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
}
