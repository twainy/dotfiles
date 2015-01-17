#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install homebrew packages
brew update
brew upgrade

# Install Basic Utils
brew install coreutils
brew install findutils
brew install binutils
brew install gnu-sed --with-default-names

# Utilties
brew install zsh
brew install wget --with-eri
brew install lua
brew install vim --override-system-vi --with-lua
brew install tmux
brew install git
brew install speedtest_cli
brew install openssl
brew install pidcat
brew link openssl --force

brew cleanup

exit 0
