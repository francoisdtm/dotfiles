#!/bin/bash

# Disable captive portal discovery
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.captive.control.plist Active -bool false
