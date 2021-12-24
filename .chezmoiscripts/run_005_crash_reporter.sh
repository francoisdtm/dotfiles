#!/bin/bash

set -exo pipefail

# Disable crash report
defaults write com.apple.CrashReporter DialogType none
