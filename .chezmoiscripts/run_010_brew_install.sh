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

# Tap repositories
brew tap homebrew/cask
brew tap homebrew/cask-fonts

# Install packages
brew install antigen
brew install awscli
brew install aws-sam-cli
brew install browserpass
brew install chezmoi
brew install git
brew install go
brew install pass
brew install python3
brew install rustup
brew install secretive
brew install vercel-cli
brew install zsh

# Install casks
brew install --cask app-cleaner
brew install --cask binance
brew install --cask brave-browser
brew install --cask discord
brew install --cask docker
brew install --cask font-fira-code
brew install --cask font-jetbrains-mono
brew install --cask gpg-suite-no-mail
brew install --cask intellij-idea
brew install --cask iterm2
brew install --cask microsoft-excel
brew install --cask microsoft-powerpoint
brew install --cask microsoft-teams
brew install --cask microsoft-word
brew install --cask minecraft
brew install --cask ngrok
brew install --cask notion
brew install --cask postman
brew install --cask proxyman
brew install --cask raspberry-pi-imager
brew install --cask telegram
brew install --cask tradingview
brew install --cask transmission
brew install --cask vscodium
brew install --cask vmware-fusion
brew install --cask windscribe
brew install --cask wireshark
brew install --cask zerotier-one
