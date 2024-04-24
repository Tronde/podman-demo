#!/usr/bin/env bash
# build_myecho_image.sh
# 
# Get a base image
ctr=$(buildah from registry.access.redhat.com/ubi9/php-81)

# Add the myecho script, see buildah-add(1)
buildah copy --chmod 755 --chown default:root $ctr '../src/Shaarli' '/opt/app-root/src'
buildah config --cmd "/usr/libexec/s2i/run" $ctr
buildah config --cmd "httpd -D FOREGROUND" $ctr

# Commit changes to new image "shaarli_image"
buildah commit $ctr shaarli_image
