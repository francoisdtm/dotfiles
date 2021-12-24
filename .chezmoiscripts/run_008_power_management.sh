#!/bin/bash

set -exo pipefail

# Modify standby and power nap settings (mandatory if 'filevault.sh' enabled)
sudo pmset -a powernap 0
sudo pmset -a standby 0
sudo pmset -a standbydelay 0
sudo pmset -a autopoweroff 0
