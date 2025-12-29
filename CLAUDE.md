# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is **extensions_lover**, a Flutter/Dart package that provides convenient extension methods to reduce boilerplate code. Published on pub.dev, it helps developers write cleaner code with shortcuts like `context.width` instead of `MediaQuery.of(context).size.width`.

## Development Commands

### Dependencies
```bash
flutter pub get
```

### Testing
```bash
# Run all tests
flutter test

# Run specific test file
flutter test test/extensions_lover_test.dart
```

### Code Analysis
The package uses `very_good_analysis` for strict linting rules.
```bash
# Run static analysis
flutter analyze
```

### Example Execution
```bash
# Run the example
cd example
flutter run -d <device>

# Or for Dart CLI example
dart run example/main.dart
```

### Publishing
```bash
# Dry run to verify package structure
flutter pub publish --dry-run

# Publish to pub.dev (requires authentication)
flutter pub publish
```

## Code Architecture

### Package Structure
- **Main entry**: `lib/extensions_lover.dart` exports all public APIs
- **Core exports**: `lib/src/extensions/extensions.dart` aggregates all extension files
- **Extension modules**: Each extension type lives in its own file under `lib/src/extensions/`

### Extension Categories

1. **BuildContext Extensions** (`media_query_extensions.dart`, `navigator_extension.dart`, `stateless_values.dart`, `themes_values_extension.dart`)
   - All provide convenience getters on `BuildContext`
   - Use Flutter's `of(context)` pattern internally
   - Examples: `context.width`, `context.theme`, `context.push()`

2. **Data Type Extensions** (`string_extensions.dart`, `list_extension.dart`)
   - Operate on Dart core types and nullable variants
   - Implement both non-null (`String`) and nullable (`String?`) versions when needed
   - Examples: `'text'.concatenateExclamation`, `list.isNullOrEmpty`

3. **DateTime Extensions** (`date_time_extensions.dart`)
   - Date and time utilities

### Design Patterns

**Nullable Extension Pattern**: When creating extensions that need to handle null values, follow this pattern:
```dart
// Non-null extension
extension StringExtensions on String {
  String get concatenateExclamation => '$this!';
}

// Nullable extension (separate)
extension NullStringExtensions on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
}
```

**BuildContext Extension Pattern**: All context-related extensions should:
- Extend `BuildContext` directly
- Provide getters that hide verbose Flutter APIs
- Include doc comments showing the before/after code
```dart
extension MediaQueryExtensions on BuildContext {
  /// use: context.width
  /// instead of: MediaQuery.of(this).size.width
  double get width => MediaQuery.of(this).size.width;
}
```

## Code Quality Standards

- **Linting**: Package uses `very_good_analysis` (configured in `analysis_options.yaml`)
- **Documentation**: Every public extension getter/method must have a doc comment
- **Examples**: All features should be demonstrated in `example/main.dart`
- **Testing**: Extensions should have corresponding tests in `test/extensions_lover_test.dart`

## Adding New Extensions

When adding new extension methods:

1. Create or modify the appropriate file in `lib/src/extensions/`
2. Export the new file in `lib/src/extensions/extensions.dart` if creating a new file
3. Follow the existing naming convention: `{type}_extension.dart` or `{type}_extensions.dart`
4. Add documentation comments with usage examples
5. Update `example/main.dart` with usage demonstration
6. Update `README.md` Features section
7. Update `CHANGELOG.md` with the new feature
8. Increment version in `pubspec.yaml` following semantic versioning

## Dependencies

- **flutter**: SDK dependency for BuildContext extensions
- **intl**: Used for number formatting in string extensions (`separateNumberWithComma`)
- **very_good_analysis**: Dev dependency for code quality enforcement
