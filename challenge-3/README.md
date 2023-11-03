# A Secure File Server Deployment on AWS
This is the 3rd challenge of the [Steampunk Ansible Challenge] competition.
See [general instructions](../README.md) for more info about the competition.

## Table of Contents
- [Scenario](#scenario)
- [Prerequisites](#prerequisites)
- [Tips](#tips)

## Scenario
You are a diligent and experienced security engineer in a bustling tech
company.
Your primary role is to safeguard the company's infrastructure, ensuring that
all deployed services and systems met stringent security and compliance
standards.

One morning you get an email from the company's Chief Information Security
Officer (CISO).
The CISO send over 15 security and compliance rules and general guidelines,
the email contains A simple directive **"Review and ensure compliance for an
Ansible Playbook that deploys SAMBA on Ubuntu EC2 instances."**
The playbook [skeleton.yml](skeleton.yml) had been created by a product owner
and is currently just a skeleton of task and task names.
He also prepared [smb.conf.j2](smb.conf.j2), where you can find the necessary
information about the configuration of SAMBA (don't change the file, it's
provided by the product owner).

The product owner knew the necessary steps to deploy SAMBA on EC2 manually,
but he had no clue on how to do it with Ansible, and now you have to create
the rest of the content with the security rules in mind.
The end goal is to deploy a secure public file server on AWS Cloud using
Ansible while adhering to security best practices and compliance standards,
including NIST and HIPAA.

### Company policies
The following section lists the rules from CISO's email that you will need to
apply.

#### Rule 1: Application specific naming.
Ensure that every Ansible task must be named line the product owner defines. 
When creating object with Ansible, every object should be named with the goal
in mind.
For example:

```yaml
    - name: Create security group for SAMBA.
      amazon.aws.ec2_security_group:
        name: SAMBA
        description: Sec group for SAMBA file server.
```

#### Rule 2: Data inside EU domain.
Ensure that you use European data center from Amazon Web Services.
Be careful that you use all the right services for specific domains.

#### Rule 3: Security first
The policy of the company is to close all ingress ports and then open just the
necessary ones for specific application in your case ports for SAMBA. 
**Use AWS security group as the "firewall"**.

PS: Don't forget about SSH.

#### Rule 4: Update and Patch Management
Ensure updates, patches, and additional security software are installed.
HINT: Run `apt-get update` and `apt-get upgrade` to apply security focused
patches.

#### Rule 5: User Access Control
When you need root access use become as a default.

#### Rule 6: Disable Unnecessary Services
Disable or remove unnecessary services and daemons to reduce the attack
surface.

- Disable unneeded services with apt, required state is absent.
- Telnet, rlogin, lpd (at least one).

#### Rule 7: Configure Firewall Rules
Use a firewall to control incoming and outgoing network traffic, before it
comes to the SAMBA server.

- Set up a firewall and define rules to allow only necessary network traffic,
  such as SAMBA-related ports.

#### Rule 8: File System Permissions
Enforce proper file system permissions and ownership.
We enforce that for file systems are specific users, that must be named with
the intent, same as for [Rule 1](#rule-1--application-specific-naming). 
For `user = samba` you can use variables and `{{ samba_password }}`, group
should be named `samba`, same as the owner.

- Utilize the principle of the least privilege when granting permissions.

#### Rule 9: AIDE (intrusion prevention detection system)
Ensure that all UNIX systems in the company has AIDE installed, as part of
CIS compliance for our company.

#### Rule 10: Restrict Root Access
Limit root access to only authorized personnel.

- Implement sudo access control to limit who can perform root-level tasks.

#### Rule 12: Reference NIST SP 800-53 Rev. 5: AC-8 a
- Every object with SSH access must have a DoD message, before you log in to 
  the SAMBA server.

"You are accessing a U.S. Government (USG) Information System (IS) that is provided for  SG-authorized use only.
By using this IS (which includes any device attached to this IS), you consent
to the following conditions:
-The USG routinely intercepts and monitors communications on this IS for
purposes including, but not limited to, penetration testing, COMSEC
monitoring, network operations and defense, personnel misconduct (PM), law
enforcement (LE), and counterintelligence (CI) investigations.
-At any time, the USG may inspect and seize data stored on this IS.
-Communications using, or data stored on, this IS are not private, are
subject to routine monitoring, interception, and search, and may be disclosed
or used for any USG-authorized purpose.
-This IS includes security measures (e.g., authentication and access
controls) to protect USG interests--not for your personal benefit or privacy.
-Notwithstanding the above, using this IS does not constitute consent to PM,
LE or CI investigative searching or monitoring of the content of privileged
communications, or work product, related to personal representation or
services by attorneys, psychotherapists, or clergy, and their assistants.
Such communications and work product are private and confidential. See User
Agreement for details."

PS: Modify ` /etc/ssh/sshd_config` and include `Banner /etc/issue` after line
`Banner`.

#### Rule 13: NTP -> NIST SP 800-53 Rev. 5: AU-8
We use NTP in the company.

PS: don't forget to disable chrony.

#### Rule 14: Secure SSH Access
Secure SSH access to prevent unauthorized login attempts.

- Disable password-based authentication and use SSH key pairs for EC2 instance.

PS: Key name on AWS instance is **Ubuntu_key**.

#### Rule 15: Flush iptables.
Ensure that we flush iptables for IPv6.

#### Rule 16: Create and update requirements.yml
Set up the `requirements.yml` file.

## Prerequisites
You can find the playbook in [skeleton.yml](skeleton.yml).
Make sure that you have installed all the
[general prerequisites](../README.md#prerequisites).

The challenge requires Ansible 2.15.
You can tell Steampunk Spotter to act is you are scanning against Ansible 2.15.

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
Carefully read the rule descriptions to find the useful tips.

[Steampunk Ansible Challenge]: https://steampunk.si/ansible-challenge/
