#!/usr/bin/env bash
# build_myecho_image.sh
# 
# Get a base image
ctr=$(buildah from registry.access.redhat.com/ubi9/ubi)

# Add the myecho script, see buildah-add(1)
buildah add --chmod 755 $ctr 'myecho' '/usr/local/bin/myecho'
buildah config --entrypoint "/usr/local/bin/myecho" $ctr

# Commit changes to new image "myecho_image"
buildah commit $ctr myecho_image
