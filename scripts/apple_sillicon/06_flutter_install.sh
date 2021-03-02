#!/bin/sh

version="1.22.6"

curl -fSL https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_$version-stable.zip --output flutter.zip
unzip flutter.zip -d /Users/$USER/flutter_sdk
rm -rf flutter.zip

gsed -i '$ a export PATH="$PATH:/Users/'$USER'/flutter_sdk/flutter/bin"' ~/.zshrc
