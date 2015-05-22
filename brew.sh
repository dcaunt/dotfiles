#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

brew install git
brew install bash-completion
brew install wget
brew install imagemagick --with-webp
brew install webp

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Objective-C / iOS / Xcode
brew install xctool
brew install mogenerator

# Cask
brew install caskroom/cask/brew-cask

brew cask install --appdir="/Applications" google-chrome

brew cleanup
