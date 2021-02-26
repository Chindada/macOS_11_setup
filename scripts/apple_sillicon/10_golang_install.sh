#!/bin/sh

curl -fSL https://golang.org/dl/go1.16.darwin-arm64.pkg --output golang.pkg
sudo installer -pkg golang.pkg -target LocalSystem
rm -rf golang.pkg
gsed -i '$ a export GO111MODULE="on"' ~/.zshrc
