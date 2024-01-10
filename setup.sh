#!/bin/sh

# Enable shell script strictness
set -eu

# Enable command tracing
set -x

# Ensure config directory exists
mkdir -p ~/.config

# Link files if they don’t exist
[ ! -e ~/.config/git ] && ln -s "$PWD/config/git" ~/.config/git
[ ! -e ~/.config/starship.toml ] && ln -s "$PWD/config/starship.toml" ~/.config/starship.toml

[ ! -e ~/.aliases ] && ln -s "$PWD/.aliases" ~/.aliases