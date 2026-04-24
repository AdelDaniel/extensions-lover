# Repository Guidelines

## Project Structure & Module Organization

This repository is a Flutter package named `extensions_lover`. The public entry
point is `lib/extensions_lover.dart`, which exports the extension barrel at
`lib/src/extensions/extensions.dart`. Individual extension groups live in
`lib/src/extensions/`, for example `string_extensions.dart`,
`list_extension.dart`, and `media_query_extensions.dart`.

Tests belong in `test/`; keep test files close to the behavior they cover by
using names such as `string_extensions_test.dart`. The `example/` directory
contains a minimal Flutter app for manual usage checks. Generated API docs live
under `doc/api/` and should only be updated intentionally.

## Build, Test, and Development Commands

- `flutter pub get`: install package dependencies.
- `dart format lib test example`: format Dart source before committing.
- `flutter analyze`: run static analysis using `very_good_analysis`.
- `flutter test`: run the package test suite.
- `dart doc`: regenerate API documentation when public APIs change.

Run commands from the repository root. This package does not define custom
scripts in `pubspec.yaml`, so prefer the standard Flutter and Dart tooling.

## Coding Style & Naming Conventions

Follow `analysis_options.yaml`, which includes
`package:very_good_analysis/analysis_options.yaml`. Use two-space indentation
and keep files formatted with `dart format`.

Name extension files in lowercase `snake_case`, ending in `_extension.dart` or
`_extensions.dart` to match the current pattern. Export new public extension
files from `lib/src/extensions/extensions.dart`; consumers should only need:

```dart
import 'package:extensions_lover/extensions_lover.dart';
```

Prefer small, focused extensions with clear getter or method names such as
`isNullOrEmpty`, `takeChars`, and `concatenateComma`.

## Testing Guidelines

Use `flutter_test` for tests. Add or update tests whenever behavior changes,
especially for null handling, boundary values, and date-sensitive helpers.
Keep tests deterministic; avoid depending on the real current date unless the
API itself requires it. Run `flutter test` and `flutter analyze` before opening
a pull request.

## Commit & Pull Request Guidelines

Recent history uses short imperative messages, often Conventional Commit style:
`feat: add label getters and docs to theme context extension`,
`docs(release): bump to 1.2.0...`, and `release: version 1.2.0`. Prefer
`feat:`, `fix:`, `docs:`, `test:`, or `release:` prefixes when applicable.

Pull requests should include a brief description, the commands run for
verification, linked issues when relevant, and screenshots only for changes
that affect the `example/` app or rendered documentation.

## Agent-Specific Instructions

Keep changes scoped to the requested extension or documentation area. Do not
modify generated docs, version numbers, or release notes unless the task asks
for a release or documentation regeneration.
