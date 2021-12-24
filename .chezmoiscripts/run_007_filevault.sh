#!/bin/bash

set -exo pipefail

# Enable Filevault
sudo fdesetup enable

# Enforce system hibernation and evict FileVault keys from memory instead of traditional sleep to memory
sudo pmset -a destroyfvkeyonstandby 1
sudo pmset -a hibernatemode 25
