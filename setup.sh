#!/usr/bin/env bash
set -euo pipefail
if ! command -v flutter >/dev/null 2>&1; then
  echo "Flutter नहीं मिला। पहले Flutter SDK/PATH सेट करें।" >&2
  exit 1
fi
if [ ! -f pubspec.yaml ] || [ ! -f lib/main.dart ]; then
  echo "इस फ़ोल्डर में pubspec.yaml और lib/main.dart होने चाहिए।" >&2
  exit 1
fi
if [ ! -d android ]; then
  flutter create .
fi
flutter pub get
flutter analyze
