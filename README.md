<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->
<p align="center">
<!-- Package Link -->
<a href="https://pub.dev/packages/extensions_lover"><img src="https://img.shields.io/pub/v/extensions_lover.svg" alt="pub package"></a>
<!-- Stars on Github -->
<a href="https://github.com/AdelDaniel/extensions-lover"><img src="https://img.shields.io/github/stars/AdelDaniel/extensions-lover.svg?style=flat&logo=github&colorB=deeppink&label=stars" alt="Star on Github"></a>
<!-- very good analysis usages -->
<a href="https://pub.dev/packages/very_good_analysis"><img src="https://img.shields.io/badge/style-very_good_analysis-B22C89.svg" alt="style: very good analysis"></a>
<!-- MIT -->
<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="License: MIT"></a>
</p>

<!-- short description:  -->
- Helps to not write so much words (`context.width` instead of `MediaQuery.of(context).size.width`)
- have helper methods for some of data types (`list.isNullOrEmpty` instead of `list == null || list!.isEmpty`)
This Package contains extensions for `Strings`, `List`, `Media Query`, and more. 

## Features
In this package:
- For Lists
  - Check if the list is Null Or Empty
  - Check if the list is Not Null Not Empty
- For Strings 
  - concatenate Asterisk
  - concatenate Colon
  - concatenate Exclamation
  - concatenate Comma
  - concatenate Dash
  - concatenate Hash
  - concatenate Space
  - concatenate Newline
  - concatenate Brackets
  - concatenate Question Mark English
  - concatenate Dollar Sign
  - concatenate Question Mark Arabic
- For Media Query 
  - context.height
  - context.width
  - context.toPadding
  - context.bottom


## Getting started


1. Add `extensions_lover: ^latest_version` on `dependencies`.

2. Add an import for `package:extensions_lover/extensions_lover.dart`.

3. Use `extensions_lover` in your code:

```dart
import 'package:extensions_lover/extensions_lover.dart';

void main() {
  /// concatenate Exclamation
  print('Hello Extensions Lover'.concatenateExclamation);
  //will print: Hello Extensions Lover!
}
```


## Usage

### With Strings

```dart
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
```


### With Lists

```dart
    
List<dynamic>? list;
  print(list.isNullOrEmpty); // true
  list = [];
  print(list.isNullOrEmpty); // true
  list = ['Flutter'];
  print(list.isNullOrEmpty); // false
  print(list.isNotNullNotEmpty); // true

```


## Additional information
- The package is in the initial phase.
- Fell free to add issues or create pull requests as you want 
