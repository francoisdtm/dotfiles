#!/bin/bash

if [ ! $(xcode-select -p)='/Library/Developer/CommandLineTools' ]; then
    sudo xcode-select --install
else
    less_fancy_echo '... skipping, looks like XCode is installed'
fi