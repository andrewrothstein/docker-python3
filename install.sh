#!/bin/sh
set -e

# example: ./install.sh alpine 3.13

os=$1
os_ver=$2

. ./python3-install-lib

install_${os} ${os_ver}
