// ignore_for_file: avoid_print

import 'package:extensions_lover/extensions_lover.dart';

void main() {
  const helloFlutter = 'Hello Flutter';

  /// concatenate Asterisk
  print(helloFlutter.concatenateAsterisk);

  /// concatenate Asterisk
  print(helloFlutter.concatenateAsterisk);

  /// concatenate Colon
  print(helloFlutter.concatenateColon);

  /// concatenate Exclamation
  print(helloFlutter.concatenateExclamation);

  /// concatenate Comma
  print(helloFlutter.concatenateComma);

  /// concatenate Dash
  print(helloFlutter.concatenateDash);

  /// concatenate Hash
  print(helloFlutter.concatenateHash);

  /// concatenate Space
  print(helloFlutter.concatenateSpace);

  /// concatenate Newline
  print(helloFlutter.concatenateNewline);

  /// concatenate Brackets
  print(helloFlutter.concatenateBrackets);

  /// concatenate Question Mark English
  print(helloFlutter.concatenateQuestionMarkEnglish);

  /// concatenate Dollar Sign
  print(helloFlutter.concatenateDollarSign);

  /// concatenate Question Mark Arabic
  print(helloFlutter.concatenateQuestionMarkArabic);

  ///
  /// For Lists
  ///
  List<dynamic>? list;
  print(list.isNullOrEmpty); // true
  list = [];
  print(list.isNullOrEmpty); // true
  list = ['Flutter'];
  print(list.isNullOrEmpty); // false
  print(list.isNotNullNotEmpty); // true
}
