#!/usr/bin/env bash
# fix-mytinytodo.sh
# Creates an example to practice troubleshooting techniques
#
# Create Podman volumes and networks
podman volume create --label purpose=demo --ignore fix-mytinytodo-mariadb
podman volume create --label purpose=demo --ignore fix-mytinytodo-app
podman network create --label purpose=demo --ignore --disable-dns \
  fix-mytinytodo-network

# Create the MariaDB container with environment variables
podman run -d --name fix-mytinytodo-mariadb        \
            --net fix-mytinytodo-network                \
            -v fix-mytinytodo-mariadb:/var/lib/mysql:Z  \
            --env 'MYSQL_USER=mtt_user'                 \
            --env 'MYSQL_DATABASE=mtt_db'               \
            --env 'MYSQL_ROOT_PASSWORD='                \
            --env 'MYSQL_PASSWORD='                     \
            registry.redhat.io/rhel9/mariadb-105:1-177.1712857771

# Create the MyTinyTodo container
podman run -d --name fix-mytinytodo-app          \
            -v fix-mytinytodo-app:/opt/app-root/src:Z \
            -p 8090:8081                              \
            localhost/mytinytodo_image
