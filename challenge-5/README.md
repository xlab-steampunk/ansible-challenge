# Jinja Ninja - Becoming the Master of Ansible Templating
This is the 5th challenge of the [Steampunk Ansible Challenge] competition.
See [general instructions](../README.md) for more info about the competition.

## Table of Contents
- [Scenario](#scenario)
- [Prerequisites](#prerequisites)
- [Tips](#tips)

## Scenario
You are a young apprentice in the realm of automation, training under the wise
ninja Sensei.
Here, ninjas don't do just ninjutsu (i.e., a discipline and martial arts
strategy) but are also trained to be different kinds of software engineers in
order to be prepared for the new age that is coming, making their skills
perfectly balanced (as all things should be).
Your village, known for its technological advancements, relies on Ansible to
manage its infrastructure. However, an unfortunate incident occurred when a
group of novice engineers attempted to incorporate Jinja templating into
their new playbooks without fully understanding its power and intricacies.
As a result, errors have arisen, and your DevOps Sensei has entrusted you with
the task of identifying and rectifying these mistakes.

Ninja Tribunal is composed of five legendary masters that all expect to get
a report about the status of their ninjas every week.
All ninja masters are software engineers and well and like to play hard, so
they expect to get the data in different form, for example:

- Grandninja Lotus expects it as an email;
- Sensei Shadowstrike expects it in his Azure Container;
- Hanzo Katanzo would like to get it inserted into his RabbitMQ queue;
- Jokemaster Noodle Nunchuck expects it in his GCP Bucket;
- Chuck Norrisuki expects it in his AWS S3 Bucket;

Your task is to fulfil the destiny of Jinja ninja and resolve all the Jinja2
templating problems that are present in the [playbook](playbook.yml).
You also need to optimize and add the missing parts and then validate the
playbook to ensure quality, reliability, security, and trustworthiness.
It is important that the playbook is compatible with the latest Ansible
version 2.15.

## Prerequisites
You can find the playbook in [playbook.yml](./playbook.yml).
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

## Tips
- Carefully follow all the comments above tasks in the playbooks.
- The `{{ ... }}` pattern means that you have to supply the missing Jinja.
- Spotter and Lint are able to validate Jinja.
- Some Jinjas have multiple flaws and need to be validated multiple times.
- You can use Jinja live parser or Python library.
- Be careful about the correct indentation for Jinjas and their results.
- Don't forget to restructure the playbook.
- Use Ansible documentation to find the right collections.
- See the example playbook result in the 
  [2023-11-23T12:14:47Z](./2023-11-23T12:14:47Z) folder.

[Steampunk Ansible Challenge]: https://steampunk.si/ansible-challenge/
[Docker Engine]: https://docs.docker.com/engine/install/
