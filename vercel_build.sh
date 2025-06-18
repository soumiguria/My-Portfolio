#!/bin/bash

# Clone Flutter if not already
if [ ! -d "flutter" ]; then
  git clone https://github.com/flutter/flutter.git
fi

# Set Flutter path
export PATH="$PWD/flutter/bin:$PATH"

# Enable Flutter web
flutter config --enable-web

# Get dependencies
flutter pub get

# Build with secrets
flutter build web --release \
  --dart-define=PUBLIC_KEY=$PUBLIC_KEY \
  --dart-define=PRIVATE_KEY=$PRIVATE_KEY \
  --dart-define=SERVICE_ID=$SERVICE_ID \
  --dart-define=TEMPLATE_ID=$TEMPLATE_ID
