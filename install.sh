#!/bin/sh
set -e

# example: ./install.sh alpine 3.13

os=$1
dashver=$2

. ./python3-install-lib

install_${os} ${ver}
