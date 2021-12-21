#!/bin/bash

# Install Homebrew
if test ! $(which brew); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Disable analytics 
brew analytics off

# Update and Upgrade
brew update
brew upgrade
