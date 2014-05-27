#!/bin/bash
set -e
source /build/buildconfig
set -x

# run before any serice installs
apt-get update
#curl is nice wget is better
apt-get install -y wget

