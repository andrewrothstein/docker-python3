#!/bin/sh
set -e

# example: ./install.sh alpine

os=$1

. ./python3-install-lib

install_${os}
