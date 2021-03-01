#!/bin/sh

curl -fSL https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_1.22.6-stable.zip --output flutter.zip
unzip flutter.zip -d /Users/timhsu/flutter_sdk
rm -rf flutter.zip
gsed -i '$ a export PATH="$PATH:/Users/timhsu/flutter_sdk/flutter/bin"' ~/.zshrc
