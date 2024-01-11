#!/bin/sh

# Enable shell script strictness
set -eu

# Enable command tracing
set -x

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed

brew install bat
brew install brotli
brew install exa
brew install exiftool
brew install fd
brew install fzf
brew install git
brew install git-delta
brew install git-lfs
brew install grep
brew install imagemagick
brew install jq
brew install ripgrep
brew install sqlite
brew install starship
brew install swiftlint
brew install webp
brew install wget
brew install zopfli

brew cleanup
