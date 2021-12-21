#!/bin/bash

# Install Curl with OpenSSL instead of Secure Transport
brew install curl --with-openssl

# Link new curl
brew link --force curl
