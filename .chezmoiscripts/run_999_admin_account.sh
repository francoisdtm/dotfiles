#!/bin/bash

set -exo pipefail

ADMIN_USERNAME="admin"
ADMIN_FULL_NAME="Administrator"

# Create admin account
sudo dscl . -create /Users/$ADMIN_USERNAME
sudo dscl . -create /Users/$ADMIN_USERNAME UserShell /bin/bash
sudo dscl . -create /Users/$ADMIN_USERNAME RealName $ADMIN_FULL_NAME
sudo dscl . -create /Users/$ADMIN_USERNAME UniqueID 1001
sudo dscl . -create /Users/$ADMIN_USERNAME PrimaryGroupID 1000
sudo dscl . -passwd /Users/$ADMIN_USERNAME password
sudo dscl . -append /Groups/admin GroupMembership $ADMIN_USERNAME

# Hide user from login view
sudo dscl . -create /Users/$ADMIN_USERNAME IsHidden 1

# Drop current's user privileges
CURRENT_USER=`id -un`
sudo dscl . -delete /Groups/admin GroupMembership $CURRENT_USER
sudo dseditgroup -o edit -d $CURRENT_USER -t user admin
