#!/bin/bash
# install boostrapper
set -e
source /build/buildconfig
set -x

/build/prepare.sh

#add any service installs here
/build/sshclient.sh
/build/java.sh
/build/jenkins.sh
if [[ "$mercurial" = 1 ]]; then /build/mercurial.sh; fi

/build/finalize.sh

