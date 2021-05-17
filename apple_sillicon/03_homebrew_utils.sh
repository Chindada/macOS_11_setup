#!/bin/sh

echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> ~/.zprofile
eval $(/opt/homebrew/bin/brew shellenv)

# brew install smartmontools
brew install git
brew install gnu-sed
brew install mas
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

# brew install --cask cheatsheet
# brew install --cask sourcetree
brew install --cask skype

brew install --cask rectangle
brew install --cask alfred
brew install --cask appcleaner
brew install --cask one-switch
brew install --cask visual-studio-code
brew install --cask valentina-studio
brew install --cask iterm2
# brew install --cask anydesk
brew install --cask google-chrome
brew install --cask homebrew/cask-versions/adoptopenjdk8
brew install --cask android-sdk

eval $(/opt/homebrew/bin/brew shellenv)

git config --global user.name "TimHsu@M1BP"
git config --global user.email "timhsu.2030@hotmail.com"

sdkmanager
touch ~/.android/repositories.cfg
sdkmanager --update

sdkmanager "build-tools;30.0.3"
sdkmanager "platforms;android-30"
sdkmanager "platform-tools"

sudo gem install cocoapods
