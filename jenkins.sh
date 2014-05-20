#!/bin/sh
# jenkins installation script
VERSION=1.563

echo installing jenkins version $VERSION ...
wget -nv -O /opt/jenkins.war http://mirrors.jenkins-ci.org/war/$VERSION/jenkins.war
ln -sf /jenkins /root/.jenkins

echo adding jenkins runit start scripts ...
mkdir /etc/service/jenkins
cp /build/runit/jenkins /etc/service/jenkins/run
chmod +x /etc/service/jenkins/run
#todo - persistant jenkins configuration

if [ ! -d "/var/log/jenkins" ]; then
    echo creating jenkins logfolder and changing access rights ...
    mkdir -p /var/log/jenkins
    chmod -R 755 /var/log/jenkins
fi

#make sure the log file exists so we can attach to it right from the start
touch /var/log/jenkins/stdout.log
