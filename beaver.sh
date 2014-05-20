#!/bin/bash
#installs beaver and all necessary components
echo installing beaver ...
apt-get install -y python-pip git
pip install git+git://github.com/josegonzalez/beaver.git#egg=beaver

echo adding beaver runit script and configuration ...
mkdir /etc/service/beaver
cp /build/runit/beaver /etc/service/beaver/run
chmod +x /etc/service/beaver/run
mkdir /etc/beaver
cp /build/config/beaver_conf /etc/beaver/conf

echo adding beaver user ...
#todo
