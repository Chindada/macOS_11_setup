#!/bin/sh

version="1.16"

curl -fSL https://golang.org/dl/go$version.darwin-arm64.pkg --output golang.pkg
sudo installer -pkg golang.pkg -target LocalSystem
rm -rf golang.pkg

gsed -i '$ a export GO111MODULE="on"' ~/.zshrc
gsed -i '$ a export GOPATH="$HOME/go"' ~/.zshrc
gsed -i '$ a export PATH="$GOPATH/bin:$PATH"' ~/.zshrc
