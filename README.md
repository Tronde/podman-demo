# A Podman Demo/Workshop for Red Hat Subscription Holders

This is the development branch for my next Podman[^1] demo/workshop.
The examples/use cases in this demo require access to the Red Hat container registry `registry.redhat.io`, for which a Red Hat Login ID is necessary to authenticate.

In case you are not a Red Hat enterprise customer with access to standard or premium subscriptions of Red Hat Enterprise Linux (RHEL) you can sign up for the no-cost [Red Hat Devoloper Subscription for Individuals](https://access.redhat.com/solutions/4078831).[^2] [^3]

## Prerequisites

  * A working rootless podman installation; instructions are available at
    * [RHEL 9 - Building, running, and managing containers](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/9/html/building_running_and_managing_containers/index)
    * [RHEL 8 - Building, running, and managing containers](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/building_running_and_managing_containers/index)
  * Access to the container images that are being used used in the examples, which are
    * registry.access.redhat.com/ubi9/httpd-24:latest
    * registry.redhat.io
  * A working Ansible installation; See [Installing Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-and-upgrading-ansible) for help.
    On RHEL you can Ansible by running:

    ~~~
    $ sudo dnf install ansible-core
    ~~~

  * Optional: A Podman Desktop installation; See [Installing Podman Desktop](https://podman-desktop.io/docs/installation)
  * Optional: OpenShift CLI tools if you want to push your containers to an OpenShift cluster

[^1]: https://podman.io
[^2]: [How do I get the no-cost Red Hat Enterprise Linux Developer Subscription or renew it?](https://access.redhat.com/solutions/4078831)
[^3]: [No-cost Red Hat Enterprise Linux Individual Developer Subscription: FAQs](https://developers.redhat.com/articles/faqs-no-cost-red-hat-enterprise-linux#)
