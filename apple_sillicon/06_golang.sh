#!/bin/sh

# version="1.16.2"
version="1.16.3"

curl -fSL https://golang.org/dl/go$version.darwin-arm64.pkg --output golang.pkg
sudo installer -pkg golang.pkg -target LocalSystem
rm -rf golang.pkg

