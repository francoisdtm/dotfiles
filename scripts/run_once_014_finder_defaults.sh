#!/bin/bash

defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write NSGlobalDomain NSToolbarTitleViewRolloverDelay -float 0
defaults write com.apple.finder NewWindowTarget -string "PfHm"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false
defaults write com.apple.finder QLEnableTextSelection -bool true
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist

/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy name" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy name" ~/Library/Preferences/com.apple.finder.plist

/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:gridSpacing 52" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:gridSpacing 36" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:gridSpacing 36" ~/Library/Preferences/com.apple.finder.plist

/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:iconSize 52" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:iconSize 52" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:iconSize 52" ~/Library/Preferences/com.apple.finder.plist

/usr/libexec/PlistBuddy -c 'Set :"NSToolbar Configuration Browser":"TB Icon Size Mode" 1' ~/Library/Preferences/com.apple.finder.plist

# Set Toolbar
/usr/libexec/PlistBuddy -c 'Delete :"NSToolbar Configuration Browser":"TB Item Identifiers"' ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c 'Add :"NSToolbar Configuration Browser":"TB Item Identifiers" array' ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c 'Add :"NSToolbar Configuration Browser":"TB Item Identifiers":0 string "com.apple.finder.BACK"' ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c 'Add :"NSToolbar Configuration Browser":"TB Item Identifiers":1 string "com.apple.finder.SWCH"' ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c 'Add :"NSToolbar Configuration Browser":"TB Item Identifiers":2 string "NSToolbarSpaceItem"' ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c 'Add :"NSToolbar Configuration Browser":"TB Item Identifiers":3 string "com.apple.finder.NFLD"' ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c 'Add :"NSToolbar Configuration Browser":"TB Item Identifiers":4 string "com.apple.finder.TRSH"' ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c 'Add :"NSToolbar Configuration Browser":"TB Item Identifiers":5 string "NSToolbarSpaceItem"' ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c 'Add :"NSToolbar Configuration Browser":"TB Item Identifiers":6 string "com.apple.finder.SHAR"' ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c 'Add :"NSToolbar Configuration Browser":"TB Item Identifiers":7 string "com.apple.finder.SRCH"' ~/Library/Preferences/com.apple.finder.plist

defaults write com.apple.finder FXPreferredViewStyle -string "icnv"
chflags nohidden ~/Library
chflags nohidden /Volumes
defaults write com.apple.finder WarnOnEmptyTrash -bool false
