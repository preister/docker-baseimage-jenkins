#!/bin/bash
set -e
source /build/buildconfig
set -x

# run as the last step of the install.sh
apt-get clean 
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#last to do is to remove all out build code
rm -rf /build
