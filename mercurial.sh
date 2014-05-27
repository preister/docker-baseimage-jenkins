#!/bin/bash
set -e
source /build/buildconfig
set -x

#installing mercurial and additions
echo installing mercurial and dependecies ...
apt-get install -y mercurial
echo /usr/bin > /etc/container_environment/MERCURIAL_PATH

echo installing mercurial jenins plugin ...
#TODO: install jenkins plugin at build time
#wget -O $JENKINS_HOME/plugins/mercurial.jpi https://updates.jenkins-ci.org/download/plugins/mercurial/1.50/mercurial.hpi

