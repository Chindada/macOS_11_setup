#!/bin/sh

brew install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf

grep "^plugins=(git" ~/.zshrc
gsed -i "/^plugins=(git/c plugins=(git colored-man-pages python brew osx asdf)" ~/.zshrc

asdf plugin list all

asdf plugin add golang https://github.com/kennyp/asdf-golang.git
asdf list all golang
asdf install golang 1.15.7
asdf global golang 1.15.7
asdf where golang
gsed -i '$ a export GO111MODULE="on"' ~/.zshrc

asdf plugin add flutter https://github.com/oae/asdf-flutter.git
asdf list all flutter
asdf install flutter 1.22.6-stable
asdf global flutter 1.22.6-stable
asdf where flutter

# asdf plugin add python https://github.com/danhper/asdf-python.git
# asdf list all python
# asdf install python 3.9.1
# asdf global python 3.9.1
# asdf where python

asdf plugin update --all
asdf plugin list
asdf current



