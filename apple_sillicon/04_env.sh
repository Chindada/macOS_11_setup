#!/bin/sh

gsed -i '1 i ZSH_DISABLE_COMPFIX="true"' ~/.zshrc
gsed -i '$ a export ANDROID_SDK_ROOT="/opt/homebrew/share/android-sdk"' ~/.zshrc
gsed -i '$ a export PATH="$PATH:/Users/'$USER'/flutter_sdk/flutter/bin"' ~/.zshrc
gsed -i '$ a export GO111MODULE="on"' ~/.zshrc
gsed -i '$ a export GOPATH="$HOME/go"' ~/.zshrc
gsed -i '$ a export PATH="$GOPATH/bin:$PATH"' ~/.zshrc

gsed -i "/^plugins=(git/c plugins=(git colored-man-pages brew osx)" ~/.zshrc
grep "^plugins=(git" ~/.zshrc

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
gsed -i '/^ZSH_THEME/c ZSH_THEME="powerlevel10k/powerlevel10k"' ~/.zshrc
grep "^ZSH_THEME" ~/.zshrc
