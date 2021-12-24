#!/bin/bash

set -exo pipefail

# Clear file
:>~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV2

# Disable Gatekeeper
sudo spctl --master-disable
