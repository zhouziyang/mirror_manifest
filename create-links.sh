#!/bin/bash

ROOT=`realpath ../..`

# AOSP repos
repos=(external/selinux external/minijail frameworks/av frameworks/base frameworks/native
    system/core system/libhwbinder system/libvintf system/netd system/vold)

for repo in "${repos[@]}"
do
    link=${ROOT}/platform_${repo/\//_}.git
    ln -snf platform/${repo}.git $link
done

ln -snf platform/manifest.git ${ROOT}/platform_manifests.git
