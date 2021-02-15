#!/bin/sh
set -e
#set -x

target_registry=${TARGET_REGISTRY:-quay.io}
target_groupname=${TARGET_GROUPNAME:-andrewrothstein}
target_name=${TARGET_NAME:-docker-python3}

os=$1
dotver=$2
dashver=$3

. ./container-build-lib

write_dockerfile_$os $dotver $dashver
buildah bud \
       --build-arg HTTP_PROXY --build-arg HTTPS_PROXY --build-arg NO_PROXY \
       --build-arg http_proxy --build-arg https_proxy --build-arg no_proxy \
       -t ${target_registry}/${target_groupname}/${target_name}:0.0.0-${os}-${dotver} \
       -f Dockerfile.${os}_${dotver} \
       .
