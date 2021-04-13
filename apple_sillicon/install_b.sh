#!/bin/sh

echo "----- Install Homebrew Utils -----" && \
. ./scripts/b01_homebrew_utils.sh && \
echo "----- Install Fonts -----" && \
. ./scripts/b02_fonts.sh && \
echo "----- Install Apps -----" && \
. ./scripts/b03_mas_apps.sh && \
echo "----- Install Golang -----" && \
. ./scripts/b04_golang.sh && \
echo "----- Install Flutter -----" && \
. ./scripts/b05_flutter.sh && \
echo "----- Generate SSH Key -----" && \
. ./scripts/b06_ssh_key_gen.sh
