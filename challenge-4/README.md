# Provision with Terraform and configure with Ansible
This is the 4th challenge of the [Steampunk Ansible Challenge] competition.
See [general instructions](../README.md) for more info about the competition.

## Table of Contents
- [Scenario](#scenario)
- [Prerequisites](#prerequisites)
- [Tips](#tips)

## Scenario
As a DevOps engineer you are using Ansible and Terraform a lot, but always
separately.
Your supervisor tasks you with finding out the possibilities to connect Ansible
with Terraform for a project that uses Terraform to provision resources and
Ansible to configure them.
For a start, they want to deploy an OpenStack VM and configure Apache web
server to host a hello-world webpage.
There is a requirement that a solution should be an Ansible Playbook that
calls Terraform and then configures resources.
There is also a need for additional playbook that will tear down the resources
provisioned by Terraform.

Your task is to help the project team by preparing the two playbooks that would
emphasize the synergy between Terraform and Ansible and show the use case of
resources being provisioned with Terraform and configured with Ansible.
The project team has already prepared Terraform configuration that resides in
[terraform/](terraform) folder.
They also prepared a skeleton for the playbooks that you need to update.
Your playbooks should reside in [ansible/](ansible) folder.
A [create.yml](ansible/create.yml) should provision and configure resources
and the [delete.yml](ansible/delete.yml) should clean them up.
The playbooks should follow the best practices for quality, reliability,
security, and trustworthiness for the latest Ansible version 2.15.

## Prerequisites
You can find the playbooks in [ansible/](ansible) folder.
Make sure that you have installed all the
[general prerequisites](../README.md#prerequisites).

The challenge requires Ansible 2.15.
You can tell Steampunk Spotter to act is you are scanning against Ansible 2.15.
You have to scan the whole [ansible/](ansible) folder.

```shell
spotter scan --project-id <project-id> --ansible-version 2.15 ansible/
```

Or you can install Ansible 2.15 to be able to run the playbook:

```shell
# install just Ansible with core modules
pip install ansible-core==2.15.4
# or you can install Ansible with all community collections
pip install ansible==8.4.0
```

## Tips
- Carefully follow all the comments above tasks in the playbooks.
- Spotter and Lint will tell you which parameters are required in tasks.
- Explore the examples from `cloud.terraform.terraform` collection.

[Steampunk Ansible Challenge]: https://steampunk.si/ansible-challenge/
[Docker Engine]: https://docs.docker.com/engine/install/
