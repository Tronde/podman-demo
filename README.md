# A Podman Demo for Red Hat Subscription Holders

This is the development branch for my next Podman[^1] demo.
The demo will show:
  * How to provide runtimes and libraries using Red Hat container images
  * How to add your own applications to Red Hat builder images
  * How to use RHEL System Roles to deploy your containerized applications
  * How to manage your containerized services with systemd

I'm going to show this demo at Red Hat Summit Connect Darmstadt 2024.
Of course you can try this demo on your own using the scripts and Ansible playbooks included in this repository.
But be aware that you might get the full experience on Summit Connect Darmstadt only.

The examples/use cases in this demo require access to the Red Hat container registry `registry.redhat.io`, for which a Red Hat Login ID is necessary to authenticate.

In case you are not a Red Hat enterprise customer with access to standard or premium subscriptions of Red Hat Enterprise Linux (RHEL) you can sign up for the no-cost [Red Hat Devoloper Subscription for Individuals](https://access.redhat.com/solutions/4078831).[^2] [^3]

## The User Stories

There are three user stories for this demo.

**Story 1:** Some user needs to build a container image by extending some
base image to create a custom container image that will serve an
application.

**Story 2:** Teams should be able to run containers and pods in a rootless
Podman environment. The containerized applications should be able to
store data persistently in databases and local file systems.

Based on these stories the demo addresses use cases to build, deploy, integrate and test containers.
With an automation first mindset the demo focus on using Ansible for the different use cases.

## Prerequisites

  * A working rootless podman installation; instructions are available at
    * [RHEL 9 - Building, running, and managing containers](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/9/html/building_running_and_managing_containers/index)
    * [RHEL 8 - Building, running, and managing containers](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/building_running_and_managing_containers/index)
  * Access to the container registries:
    * registry.access.redhat.com
    * registry.redhat.io
  * A working Ansible installation; See [Installing Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-and-upgrading-ansible) for help.
    On RHEL you can install Ansible by running:

    ~~~
    $ sudo dnf install ansible-core
    ~~~

  * Access to RHEL System Roles which can be installed on any subscribed RHEL system by running:

    ~~~
    $ sudo dnf install rhel-system-roles
    ~~~

## Applications used in the examples of this workshop

  * [myTinyTodo](https://www.mytinytodo.net/) - Simple way to manage your todo lists. Written in PHP and jQuery. Data stored in PostgreSQL, MySQL or Sqlite database. Distributed under the GNU GPL License.

## Interactive Labs offered by Red Hat

  * [Build container images with Red Hat Enterprise Linux container tools](https://www.redhat.com/en/interactive-labs/build-container-images-red-hat-enterprise-linux-container-tools); Add an existing application to a Red Hat universal base image container and deploy it.
  * [Create images with container tools (Buildah)](https://www.redhat.com/en/interactive-labs/create-images-container-tools-buildah); Build containers using an existing base image or from scratch using Red Hat Enterprise Linux container tools.
  * [Deploy containers using Podman container tools](https://www.redhat.com/en/interactive-labs/deploy-containers-podman-container-tools); Deploy and run container images using the utilities included in Red Hat Enterprise Linux container tools.
  * [Create and manage Podman pods](https://www.redhat.com/en/interactive-labs/create-and-manage-podman-pods); Create Podman pods to manage multiple containers and services at once.

## Background information and further reading

This section provides articles from various sources that help to get a better understanding of the wonderful world of containers.

### Architecture and Terminology

  * [A Practical Introduction to Container Terminology](https://developers.redhat.com/blog/2018/02/22/container-terminology-practical-introduction/); [Scott McCarty (fatherlinux)](https://www.redhat.com/en/authors/scott-mccarty-fatherlinux); February 22, 2018
  * [Architecting Containers Part 1: Why Understanding User Space vs. Kernel Space Matters](https://www.redhat.com/en/blog/architecting-containers-part-1-why-understanding-user-space-vs-kernel-space-matters); [Scott McCarty (fatherlinux)](https://www.redhat.com/en/authors/scott-mccarty-fatherlinux); July 29, 2015
  * [Architecting Containers Part 2: Why the User Space Matters](https://www.redhat.com/en/blog/architecting-containers-part-2-why-user-space-matters); [Scott McCarty (fatherlinux)](https://www.redhat.com/en/authors/scott-mccarty-fatherlinux); September 17, 2015
  * [Architecting Containers Part 3: How the User Space Affects Your Application](https://www.redhat.com/en/blog/architecting-containers-part-3-how-user-space-affects-your-application); [Scott McCarty (fatherlinux)](https://www.redhat.com/en/authors/scott-mccarty-fatherlinux); November 10, 2015
  * [Container images, multi-architecture, manifests, ids, digests – what’s behind?](https://www.opensourcerers.org/2020/11/16/container-images-multi-architecture-manifests-ids-digests-whats-behind/); [Robert Bohne](https://www.opensourcerers.org/author/rbohne/); Open Sourcerers; November 16, 2020

### Red Hat Universal Base Image

  * [(Re)Introducing the Red Hat Universal Base Image](https://www.redhat.com/en/blog/introducing-red-hat-universal-base-image); [Scott McCarty (fatherlinux)](https://www.redhat.com/en/authors/scott-mccarty-fatherlinux); Red Hat Blog; 2024-03-19
  * [Catalog: Red Hat Universal Base Image](https://catalog.redhat.com/software/base-images#overview)
  * [Knowledge Base: Universal Base Images (UBI): Images, repositories, packages, and source code](https://access.redhat.com/articles/4238681)

### Building

  * [Building with Buildah: Dockerfiles, command line, or scripts](https://www.redhat.com/sysadmin/building-buildah)
  * [Getting started with Buildah](https://developers.redhat.com/blog/2021/01/11/getting-started-with-buildah#)
  * [https://github.com/containers/Demos/tree/main/building](https://github.com/containers/Demos/tree/main/building)
  * [https://github.com/containers/buildah/tree/main/docs/tutorials](https://github.com/containers/buildah/tree/main/docs/tutorials)
  * [Using sensitive data in containers](https://www.redhat.com/sysadmin/sensitive-data-containers). [Ashley Cui (Red Hat)](https://www.redhat.com/sysadmin/users/ashley-cui). 2021-11-03.

### Networking

  * [Basic Networking Guide for Podman](https://github.com/containers/podman/blob/master/docs/tutorials/basic_networking.md); GibHub; Podman-Tutorials; Letzter Abruf: 2021-02-20
  * [Configuring container networking with Podman](https://www.redhat.com/sysadmin/container-networking-podman); [Brent Baude](https://www.redhat.com/sysadmin/users/brent-baude); Enable Sysadmin; October 28, 2019

### Others

  * [Quadlet: Running Podman containers under systemd](https://mo8it.com/blog/quadlet/)
  * [Exploring the new Podman secret command](https://www.redhat.com/sysadmin/new-podman-secrets-command); Enable Sysadmin; [Ashley Cui](https://www.redhat.com/sysadmin/users/ashley-cui) (Red Hat); April 8, 2021

[^1]: https://podman.io
[^2]: [How do I get the no-cost Red Hat Enterprise Linux Developer Subscription or renew it?](https://access.redhat.com/solutions/4078831)
[^3]: [No-cost Red Hat Enterprise Linux Individual Developer Subscription: FAQs](https://developers.redhat.com/articles/faqs-no-cost-red-hat-enterprise-linux#)
[^4]: [Red Hat Technical Account Management](https://www.redhat.com/en/services/support/technical-account-management)
