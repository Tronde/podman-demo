# podman-demo
The Power of Podman - A Journey to containerized Applications (Talk at Red Hat Summit Connect Darmstadt 2023)

This repository contains the files and cheat sheets we use for our talk at Red Hat Summit Connect Darmstadt 2023.

As time for a proper demo is far too short during the event you are free to use the content in this repo for your own experiments to gather some experience with the swiss army knive of container tools: `podman`.


## Prerequisites

  * A working rootless podman installation; instructions are available at
    * [Podman Installation Instructions](https://podman.io/docs/installation)
    * [RHEL 9 - Building, running, and managing containers](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/9/html/building_running_and_managing_containers/index)
    * [RHEL 8 - Building, running, and managing containers](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/building_running_and_managing_containers/index)
  * Access to the container images we used in our examples, which are
    * registry.access.redhat.com/ubi9/httpd-24:latest
    * docker.io/library/redis:7
    * docker.io/library/nextcloud:production-apache
    * docker.io/louislam/uptime-kuma:1
    * ghcr.io/paperless-ngx/tika:latest
    * docker.io/library/postgres:15
    * ghcr.io/paperless-ngx/paperless-ngx:latest
    * docker.io/gotenberg/gotenberg:7.8
    * docker.io/library/mariadb:10.11.2
  * Optional: A working Ansible installation if you would like to try the Ansible example; See [Installing Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-and-upgrading-ansible) for help.


## Demos

The following sections contain simple examples to show what's possible with `podman`.


### Run a single container application, e.g. uptime-kuma

Project URL: [https://github.com/louislam/uptime-kuma](https://github.com/louislam/uptime-kuma)

~~~
podman volume create uptime-kuma
podman run -d --restart=always -p 3001:3001 -v uptime-kuma:/app/data --name uptime-kuma louislam/uptime-kuma:1
~~~


### Run an application delivered as compose, e.g. paperless-ngx

Project URL: [https://docs.paperless-ngx.com/setup/#docker_hub](https://docs.paperless-ngx.com/setup/#docker_hub)

  * The file `docker-compose.env.orig` is the file provided by the project
  * `docker-compose.env` is the adjusted version to work with rootless `podman`
  * Just diff the two to see the differences

~~~
cd podman-compose
podman-compose run --rm webserver createsuperuser
podman-compose up
~~~


### Deploy Nextcloud with MariaDB using Ansible

Project URL: [https://galaxy.ansible.com/ui/standalone/roles/Tronde/deploy_nextcloud_with_mariadb_pod/](https://galaxy.ansible.com/ui/standalone/roles/Tronde/deploy_nextcloud_with_mariadb_pod/)

~~~
cd ansible
ansible-playbook -i hosts deploy_nextcloud.yml
~~~


### Quadlets

  * `quadlets` includes a systemd kube unit which can be used to demonstrate how to run containers as a systemd service
  * `quadlets/instructions.txt` describes how it works
