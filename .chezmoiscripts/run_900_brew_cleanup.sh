#!/bin/bash

set -exo pipefail

# Brew cleanup
brew cleanup
rm -f -r /Library/Caches/Homebrew/*
