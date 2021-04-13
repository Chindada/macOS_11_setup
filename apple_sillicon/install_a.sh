#!/bin/sh

echo "----- Install HomeBrew -----" && \
. ./scripts/a01_homebrew.sh && \
echo "----- Install Oh My Zsh -----" && \
. ./scripts/a02_ohmyzsh.sh
