# AI-Powered Ansible Playbook Validation
This is the 1st challenge of the [Steampunk Ansible Challenge] competition.
See [general instructions](../README.md) for more info about the competition.

## Table of Contents
- [Scenario](#scenario)
- [Prerequisites](#prerequisites)
- [Tips](#tips)

## Scenario
You are DevOps engineer tasked with deploying a simple web page within a Nginx
Docker container using Ansible.
To expedite your development, you've turned to the latest advancements in
technology and partnered with an AI assistant, ChatGPT. 
ChatGPT has generated a [playbook.yml](playbook.yml) that appears to meet your
requirements.

However, as a DevOps professional, your mission is to validate this playbook
and ensure it is not just functional, but truly production-ready, with
impeccable quality, reliability, security, and trustworthiness.
It is also important that the playbook is runnable with the latest Ansible
version 2.15.

## Prerequisites
You can find the playbook in [playbook.yml](playbook.yml).
Make sure that you have installed all the
[general prerequisites](../README.md#prerequisites).

The challenge requires Ansible 2.15.
You can tell Steampunk Spotter to act as if you are scanning against Ansible
2.15.

```shell
spotter scan --project-id <project-id> --ansible-version 2.15 playbook.yml
```

Or you can install Ansible 2.15 to be able to run the playbook:

```shell
# install just Ansible with core modules
pip install ansible-core==2.15.4
# or you can install Ansible with all community collections
pip install ansible==8.4.0
```

If you want to run the playbook locally, you will also need to install
[Docker Engine].

## Tips
It is known that AI can have "hallucinations", so be careful, for example when
looking at Ansible modules that are used in the playbook.
You can run the playbook locally and see if it works.
You can use the following playbook to undeploy the application if needed:

```yaml
---
- name: Tear down web application deployed with Ansible and Docker
  hosts: localhost
  gather_facts: false
  become: false
  vars:
    docker_network_name: my_network
    docker_container_name: my_web_page
  tasks:
    - name: Stop and remove Docker container
      community.docker.docker_container:
        name: "{{ docker_container_name }}"
        state: absent

    - name: Remove Docker network
      community.docker.docker_network:
        name: "{{ docker_network_name }}"
        state: absent

    - name: Display teardown message
      ansible.builtin.debug:
        msg: "Web application has been torn down successfully."
```

[Steampunk Ansible Challenge]: https://steampunk.si/ansible-challenge/
[Docker Engine]: https://docs.docker.com/engine/install/
