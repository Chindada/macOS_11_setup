#!/bin/sh

# version="2.0.2"
# version="2.0.4"
# version="2.0.6"
# version="2.2.1"
version="2.2.3"

curl -fSL https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_$version-stable.zip --output flutter.zip
unzip -q flutter.zip -d /Users/$USER/flutter_sdk
rm -rf flutter.zip

