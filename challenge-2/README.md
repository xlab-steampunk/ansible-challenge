# Tackling Ansible Upgrades (2.4 to 2.14)
This is the second challenge of the [Steampunk Ansible Challenge] competition.
See the [general instructions](../README.md) for more info about the
competition.

## Table of Contents
- [Scenario](#scenario)
- [Prerequisites](#prerequisites)
- [Tips](#tips)

## Scenario
You're newly appointed as a Senior Upgrader of Playbooks within Acme Corp.
Five years ago, your company started using Ansible for automation, and created
a webpage automation repository - the one you are looking at right now.
Using Ansible 2.4, all the rage back then, a lone wolf made deploying a
webpage into a single-click operation, which was a widely-celebrated company
breakthrough.

Of course, the person left for greener pastures between then and now.
You are now tasked with maintaining this, and other automation content for the
company.

Your superior, a Senior Principal Upgrader of Playbooks, has tasked you with
the following:

* Upgrade the Ansible content to run under Ansible Core 2.14 against existing machines.
  This means upgrading for compatibility while keeping its effects identical.
* Move distribution-specific tasks to separate task lists, e.g. Debian.yml and CentOS.yml.
  The company is soon planning to migrate to Gentoo for all production machines and would like to ensure that migration
  is painless.

You find that the original developer of the code has included a Vagrant
configuration they used for testing.
A successful deployment results in a functioning webpage served under a
self-signed certificate on both Debian 9 and CentOS 7.

## Prerequisites
You can find the entrypoint in [playbook.yml](playbook.yml) and additional
content under `roles/`.
Make sure that you have installed all the
[general prerequisites](../README.md#prerequisites).

The challenge requires upgrading to Ansible 2.14.
You can tell Steampunk Spotter to act is you are scanning against Ansible
2.14 regardless of the version installed:

```shell
spotter scan --project-id <project-id> --ansible-version 2.14 --profile full .
```

Be sure you're scanning the complete directory, not only the entrypoint
playbook.
Also make sure you are using the `full` Spotter profile.

To run the playbook locally, run `vagrant up`, `vagrant rsync-auto`, and
`vagrant ssh control` to run things from the control machine.
This gives you a premade, disposable, Ansible Core 2.14 environment to try
things out in. 

## Tips
* The documentation helps a bunch for this challenge.
* Most things can be fixed automatically!

[Steampunk Ansible Challenge]: https://steampunk.si/ansible-challenge/
