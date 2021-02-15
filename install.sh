#!/bin/sh
set -e
#set -x

# example: ./install.sh alpine 3_10

os=$1
dashver=$2

. python3-install-lib

#export LC_CTYPE=en_US.UTF-8
#export LANG=en_US.UTF-8

install_${os}_${dashver}
