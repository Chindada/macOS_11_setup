#!/bin/sh

version="2.0.2"

curl -fSL https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_$version-stable.zip --output flutter.zip
unzip flutter.zip -d /Users/$USER/flutter_sdk
rm -rf flutter.zip

gsed -i '$ a export PATH="$PATH:/Users/'$USER'/flutter_sdk/flutter/bin"' ~/.zshrc
