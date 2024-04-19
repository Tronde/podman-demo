# A Podman Demo/Workshop for Red Hat Subscription Holders

This is the development branch for my next Podman[^1] demo/workshop.
The examples/use cases in this demo require access to the Red Hat container registry `registry.redhat.io`, for which a Red Hat Login ID is necessary to authenticate.

In case you are not a Red Hat enterprise customer with access to standard or premium subscriptions of Red Hat Enterprise Linux (RHEL) you can sign up for the no-cost [Red Hat Devoloper Subscription for Individuals](https://access.redhat.com/solutions/4078831).[^2] [^3]

## The User Stories

There are three user stories for this demo.

**Story 1:** Some user needs to build a container image by extending some
base image to provide a custom container image that will serve an
application.

**Story 2:** Teams should be able to run containers and pods in a rootless
Podman environment. The containerized applications should be able to
store data persistently in databases or local file systems.

**Story 3:** System administrators need to inspect container images, check
logs of running containers, and need access to troubleshooting
resources in order to support their application teams.

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
    On RHEL you can Ansible by running:

    ~~~
    $ sudo dnf install ansible-core
    ~~~

  * Access to RHEL System Roles which can be installed on any subscribed RHEL system by running

    ~~~
    $ sudo dnf install rhel-system-roles
    ~~~

  * Optional: A Podman Desktop installation; See [Installing Podman Desktop](https://podman-desktop.io/docs/installation)
  * Optional: OpenShift CLI tools if you want to push your containers to an OpenShift cluster

## How to use this workshop on your own time?

I designed this demo/workshop for on-site vists, where I as a Red Hat Technical Account Manager (TAM)[^4] visit my customers to discuss current topics, projects, and deliver demos and workshops that are of interest for the customer.

If you like to repeat the steps from the workshop on your own time or just do the workshop yourself, feel free to go ahead.
You can use the file `slides-podman-demo.txt` as guidance.
The file is a command-line based markdown presentation.
See [mdp](https://github.com/visit1985/mdp) on how to render it in your terminal of choice.
And of course, you can just use your favorite editor to view it.

[^1]: https://podman.io
[^2]: [How do I get the no-cost Red Hat Enterprise Linux Developer Subscription or renew it?](https://access.redhat.com/solutions/4078831)
[^3]: [No-cost Red Hat Enterprise Linux Individual Developer Subscription: FAQs](https://developers.redhat.com/articles/faqs-no-cost-red-hat-enterprise-linux#)
[^4]: [Red Hat Technical Account Management](https://www.redhat.com/en/services/support/technical-account-management)
