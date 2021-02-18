#!/bin/bash
set -e
#set -x

. ./container-build-lib
buildah_build $1 $2
