#!/bin/bash

set -exo pipefail

if [ ! $(xcode-select -p)='/Library/Developer/CommandLineTools' ]; then
    sudo xcode-select --install
fi