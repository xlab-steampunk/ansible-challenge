# Steampunk Ansible Challenge
A series of challenges for the [Steampunk Ansible Challenge] competition.

| Question |                     Key information                      |
|----------|:--------------------------------------------------------:|
| What     |              Ansible Challenge competition               |
| When     |              October 12 - November 16, 2023              |
| Who      |  Open to all Ansible enthusiasts and automation wizards  |
| Why      |   To enhance Ansible skills and demonstrate expertise    |
| Where    |   Register at https://steampunk.si/ansible-challenge/    |
| Q&A      | Join our [Discord] or [Reddit] community for discussions |

## Table of Contents
- [Introduction](#introduction)
- [Instructions](#instructions)
  - [Registration](#registration)
  - [Timeline](#timeline)
  - [Prerequisites](#prerequisites)
  - [Submission](#submission)
  - [Grading](#grading)
  - [Prizes](#prizes)
  - [Tips and tricks](#tips-and-tricks)
  - [Support and Community](#support-and-community)
- [Acknowledgement](#acknowledgment)

## Introduction
[Steampunk Ansible Challenge] is a competition created by [XLAB Steampunk].
It contains a series of weekly challenges where participants will have the
opportunity to showcase their Ansible playbook expertise by tackling exciting
and real-world automation problems.
Each challenge is designed to focus on specific aspects of writing Ansible
content, such as validation, security, best practices, etc.
The challenges will cover topics for Ansible beginners, as well as Ansible
experts.

The Steampunk Ansible Challenge presents five individual challenges,
open to all Ansible enthusiasts out there.
Every week, an email will pop into your inbox, packed with all the details for
you to jump into the competition. Although the new challenge will replace the
previous one, you can still tackle the challenges after they officially end
and compete for the grand prize.

## Instructions
The following section will explain the details of how the competition works:

### Registration
You can register for the challenge at https://steampunk.si/ansible-challenge/.
You will receive an email confirmation and other emails will follow (e.g.,
when your [Steampunk Spotter] account is created, when a new challenge is
published, etc.).

### Timeline
The following dates and hours are set for the five challenges to start:

- 1st challenge: October 12 at 16:00 CEST
- 2nd challenge: October 19 at 16:00 CEST
- 3rd challenge: October 26 at 16:00 CEST
- 4th challenge: November 2 at 16:00 CET
- 5th challenge: November 9 at 16:00 CET

The competition concludes on November 16 at 16:00 CET, when the grand winner
will be announced.
The solutions for challenges will be available within the `solutions` branch
of this repository.

Each challenge and its instructions will appear on time in a separate folder
within this GitHub repository.
There is no time limit for solving each of the challenges.

### Prerequisites
To begin, clone this repository:

```shell
git clone git@github.com:xlab-steampunk/ansible-challenges.git
cd ansible-challenges
```

The submission will be done through [Steampunk Spotter].
[Steampunk Spotter] provides an Ansible Playbook Scanning Tool that analyzes
and offers recommendations for your Ansible Playbooks.
Therefore, you will need to install the [Spotter CLI] to be able to submit
your result of the challenge.

Ensure you have Python >= 3.7 installed and install the [steampunk-spotter]
Python package:

```shell
pip install steampunk-spotter
```

We suggest installing the package into a clean Python virtual environment.
After that, you will need to authenticate to the [Steampunk Spotter].
You can generate a new API token in the user settings within the [Spotter App].

After that you can do a persistent user login:

```shell
spotter --api-token <your-api-token> login
```

To verify that Spotter CLI works do a scan with this example playbook:

```yaml
- name: Sample playbook
  hosts: localhost
  tasks:
    - name: Get the payload from the API
      uri:
        url: "/some-url"
        method: GET
        user: " {{ username }}"
```

The CLI should output a scan result.

```shell
spotter scan playbook.yml
```

For more comprehensive usage, issue `spotter --help` and `spotter scan --help`.
Refer to [Spotter CLI docs]  for more detailed instructions if needed.

Most challenges will require only Python and Ansible.
Any other requirements will be explained in `README.md` of the challenge.

When a new challenge is published you can just pull the changes.
    
```shell
git pull
cd challenge1/
```

And after that, you can start solving it.

## Submission
The submission will be done through [Steampunk Spotter].
After you register for the Ansible Challenge, a new [Steampunk Spotter] 
account with a random username is created.
We will also create a new Spotter organization where challenges will reside as
projects.
When a new challenge is published a new project will be created and visible
in the [Spotter App].

Navigate to [Spotter App], set the organization to Ansible Challenge and
find a project with the name challenge-1, click on it and copy the project ID.
To submit your solution of the challenge run a new Spotter scan with the
corresponding project ID.
You will see the result of your scan in the console and in the
[Spotter App].

```shell
cd challenge1/
spotter scan --project-id <project-id-for-the-challenge> .
```

You can submit the challenge (do a new scan) as many times as you want.
The best solution (with the fewest number of errors, warnings, and hints) will
count.

### Grading
Your goal for each challenge is to ensure that the submitted Ansible content is
production-ready and characterized by exceptional quality, reliability,
security, and trustworthiness.
Each challenge will have a set of Spotter custom policies that will check your
submitted content.

Your performance will be tracked on our leaderboard (at
https://steampunk.si/ansible-challenge/), where you can see how you rank
against other participants.
Ranking will be done for each challenge and altogether.

Users will be ranked according to two aspects:

- number of Spotter check results (errors, warnings, and hints) and
- time taken to solve and submit the challenge from when it was published.

So, to become the Grand Winner, you must flawlessly balance precision and
speed across all five challenges.
The correctness will take precedence over time.
Looking at the check results, any errors take precedence over warnings and 
these over hints.

### Prizes
The one who keeps on demonstrating your outstanding playbook writing skills
across all five challenges will be crowned the grand winner and receive a
special prize: Meta Oculus!
The top three competitors of each individual challenge will receive a bag of
Steampunk goodies.
If you win multiple individual challenges, you will only get the award once.

### Tips and Tricks
- Get to know [Steampunk Spotter] by going through the [Getting Started Guide].
- Begin your Spotter journey by watching the [Spotter CLI demo video].
- Master using Spotter by watching all [Spotter 101 videos] to gain an
  advantage over fellow challengers.
- Refer to the [Steampunk Ansible Documentation] to swiftly locate and explore
  the appropriate version of the collection or module.
- Utilize the [Spotter check catalogue] when encountering challenges in
  resolving errors, warnings, or hints.
- Leverage various tools and resources (e.g., [Steampunk Spotter],
  [Ansible Lint], [KICS], [Ansible Lightspeed], [Steampunk Blog],
  [Awesome Ansible] and others) to ensure the quality and security of your
  Ansible content.
- Execute [Spotter CLI] and other tools multiple times to ensure optimal
  results.
- Employ the `--rewrite` function with [Steampunk Spotter] and `--fix` with
  [Ansible Lint] for automated enhancement of Ansible content.
- Explore and use specific tips and tricks provided for each individual
  challenge.

### Support and Community
To get answers, tips & tricks and chat with our experts and fellow
challengers, join our [Discord] or [Reddit] Community.

## Acknowledgment
The challenges were created by [XLAB Steampunk], IT automation specialists and
leading experts in building Enterprise Ansible Collections.

[Steampunk Ansible Challenge]: https://steampunk.si/ansible-challenge/
[Discord]: https://discord.gg/xMDfHpHV
[Reddit]: https://www.reddit.com/r/XLAB_Steampunk/
[XLAB Steampunk]: https://steampunk.si/
[Steampunk Spotter]: https://steampunk.si/spotter/
[Spotter CLI]: https://gitlab.com/xlab-steampunk/steampunk-spotter-client/spotter-cli
[steampunk-spotter]: https://pypi.org/project/steampunk-spotter/
[Spotter CLI docs]: https://gitlab.com/xlab-steampunk/steampunk-spotter-client/spotter-cli/-/blob/main/DOCUMENTATION.md
[Spotter App]: https://spotter.steampunk.si/
[Getting Started Guide]: https://steampunk.si/spotter/getting-started/introduction/
[Spotter CLI demo video]: https://www.youtube.com/watch?v=JmiKDpETY1o
[Spotter 101 videos]: https://www.youtube.com/playlist?list=PLjFRL89L9NoPuzQwIdlKRA_Pg5oJP3GY_
[Steampunk Ansible Documentation]: https://docs.steampunk.si/plugins/
[Spotter check catalogue]: https://spotter.steampunk.si/check-catalogue/
[Ansible Lint]: https://ansible.readthedocs.io/projects/lint/
[KICS]: https://kics.io/
[Ansible Lightspeed]: https://www.redhat.com/en/engage/ansible-lightspeed
[Steampunk Blog]: https://steampunk.si/blog/
[Awesome Ansible]: https://github.com/ansible-community/awesome-ansible
