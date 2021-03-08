#!/bin/sh

brew install git
brew install gnu-sed
brew install mas

git config --global user.name "TimHsu@MBP"
git config --global user.email "maochindada@gmail.com"

brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

gsed -i '1 i ZSH_DISABLE_COMPFIX="true"' ~/.zshrc
gsed -i '$ a source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh' ~/.zshrc
gsed -i '$ a source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' ~/.zshrc

brew install --cask iterm2
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
grep "^ZSH_THEME" ~/.zshrc
gsed -i '/^ZSH_THEME/c ZSH_THEME="powerlevel10k/powerlevel10k"' ~/.zshrc

brew install --cask rectangle
brew install --cask keyboardcleantool
brew install --cask alfred
brew install --cask appcleaner
brew install --cask anydesk


