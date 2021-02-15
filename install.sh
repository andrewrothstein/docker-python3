#!/bin/sh
set -e

# example: ./install.sh alpine 3.13

os=$1
dashver=$2

. ./python3-install-lib

export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

install_${os} ${ver}
