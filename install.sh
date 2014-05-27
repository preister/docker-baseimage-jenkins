#!/bin/bash
# install boostrapper
set -e
source /build/buildconfig
set -x

/build/prepare.sh

#add any service installs here
/build/jenkins.sh
/build/beaver.sh

/build/finalize.sh

