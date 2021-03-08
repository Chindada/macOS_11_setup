#!/bin/sh

brew install git
git config --global user.name "TimHsu@MBP"
git config --global user.email "maochindada@gmail.com"

brew install gnu-sed
gsed -i '1 i ZSH_DISABLE_COMPFIX="true"' ~/.zshrc
grep "^plugins=(git" ~/.zshrc
gsed -i "/^plugins=(git/c plugins=(git colored-man-pages python brew osx)" ~/.zshrc

brew install zsh-autosuggestions
gsed -i '$ a source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh' ~/.zshrc
brew install zsh-syntax-highlighting
gsed -i '$ a source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' ~/.zshrc

brew install --cask iterm2
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
grep "^ZSH_THEME" ~/.zshrc
gsed -i '/^ZSH_THEME/c ZSH_THEME="powerlevel10k/powerlevel10k"' ~/.zshrc


brew install mas

brew install --cask rectangle
brew install --cask alfred
brew install --cask appcleaner
brew install --cask one-switch

brew install --cask visual-studio-code
brew install --cask valentina-studio
brew install --cask sourcetree

brew install --cask anydesk
brew install --cask skype
brew install --cask google-chrome

brew install --cask homebrew/cask-versions/adoptopenjdk8
brew install --cask android-sdk
gsed -i '$ a export ANDROID_SDK_ROOT="/opt/homebrew/share/android-sdk"' ~/.zshrc

sdkmanager
touch ~/.android/repositories.cfg
sdkmanager --update

sdkmanager "build-tools;30.0.3"
sdkmanager "platforms;android-30"
sdkmanager "platform-tools"

sudo gem install cocoapods


