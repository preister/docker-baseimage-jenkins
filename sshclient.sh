#!/bin/bash
set -e
source /build/buildconfig
set -x

apt-get install -y openssh-client

cp /build/config/ssh /etc/ssh/ssh_config

