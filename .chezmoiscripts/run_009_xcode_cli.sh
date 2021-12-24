#!/bin/bash

if [ ! $(xcode-select -p)='/Library/Developer/CommandLineTools' ]; then
    sudo xcode-select --install
fi