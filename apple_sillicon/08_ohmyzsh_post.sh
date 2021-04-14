#!/bin/sh

# grep "^plugins=(git" ~/.zshrc
gsed -i "/^plugins=(git/c plugins=(git colored-man-pages brew osx)" ~/.zshrc

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# grep "^ZSH_THEME" ~/.zshrc
gsed -i '/^ZSH_THEME/c ZSH_THEME="powerlevel10k/powerlevel10k"' ~/.zshrc

gsed -i '1 i ZSH_DISABLE_COMPFIX="true"' ~/.zshrc
gsed -i '$ a source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh' ~/.zshrc
gsed -i '$ a source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' ~/.zshrc
gsed -i '$ a export ANDROID_SDK_ROOT="/opt/homebrew/share/android-sdk"' ~/.zshrc