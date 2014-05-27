#!/bin/bash
set -e 
source /build/buildconfig
set -x

# jenkins installation script
echo installing jenkins from $JENKINS_WAR_URL ...
wget -nv -O /opt/jenkins.war $JENKINS_WAR_URL
echo setting JENKINS_HOME to $JENKINS_HOME
echo $JENKINS_HOME > /etc/container_environment/JENKINS_HOME
mkdir $JENKINS_HOME

echo adding jenkins runit start scripts ...
mkdir /etc/service/jenkins
cp /build/runit/jenkins /etc/service/jenkins/run
chmod +x /etc/service/jenkins/run
#adding log forwarding
mkdir /etc/service/jenkins/log
cp /build/runit/jenkins_log /etc/service/jenkins/log/run
chmod +x /etc/service/jenkins/log/run
mkdir /var/log/jenkins/
