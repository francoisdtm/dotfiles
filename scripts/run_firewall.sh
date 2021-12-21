#!/bin/bash

# Enable firewall
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on

# Enable logging
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setloggingmode on

# Enable stealth mode
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setstealthmode on

# Disallow signed built-in applications automatically
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setallowsigned off

# Disallow signed downloaded applications automatically
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setallowsignedapp off
