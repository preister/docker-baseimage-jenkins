#!/bin/bash
# run before any serice installs
set -e
source /build/buildconfig
set -x

apt-get update
#curl is nice wget is better
apt-get install -y wget
#for a jenkins machine java is a basic requirement
apt-get install -q -y openjdk-7-jre-headless
apt-get clean
