#!/bin/sh

echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> ~/.zprofile
eval $(/opt/homebrew/bin/brew shellenv)

# brew install smartmontools
brew install git
git config --global user.name "TimHsu@M1BP"
git config --global user.email "timhsu.2030@hotmail.com"

brew install gnu-sed
brew install mas

brew install zsh-autosuggestions
gsed -i '$ a source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh' ~/.zshrc
brew install zsh-syntax-highlighting
gsed -i '$ a source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' ~/.zshrc

brew install --cask google-chrome
brew install --cask microsoft-teams
brew install --cask skype

brew install --cask rectangle
brew install --cask alfred
brew install --cask appcleaner
brew install --cask one-switch

brew install --cask sourcetree
brew install --cask visual-studio-code
brew install --cask valentina-studio
brew install --cask iterm2

brew install --cask homebrew/cask-versions/adoptopenjdk8
brew install --cask android-sdk

sdkmanager
touch ~/.android/repositories.cfg
sdkmanager --update
sdkmanager "build-tools;30.0.3"
sdkmanager "platforms;android-30"
sdkmanager "platform-tools"

sudo gem install cocoapods
