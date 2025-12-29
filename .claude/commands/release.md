---
description: Prepare a Flutter/Dart package release for pub.dev
---

Important: use this agent "@flutter-release-manager"

Analyze the recent changes in this repository and prepare a complete release package including:

- Version bump in pubspec.yaml following semantic versioning
- CHANGELOG.md updates with categorized changes
- README.md updates if needed
- Git tag information
- Don't Mention AI in the commit or anything.
- The tag shouldn't start with v example v1.0.0 it should be like this 1.0.0 without v

  - Example:

    - Right: git tag -a 1.1.0 -m "Release 1.1.0 - Add DateTime helper extensions
    - Wrong: git tag -a v1.1.0 -m "Release v1.1.0 - Add DateTime helper extensions

Please review all commits since the last release and categorize the changes appropriately.
