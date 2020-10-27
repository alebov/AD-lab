# Active Directory Lab

This lab is made of three virtual machines:
- **Domain controller** running on Windows Server 2019
- **Member server** with a Microsoft ISS web-server and a Microsoft SQL server
- **Windows workstation** running on Windows 10

The lab setup is automated using vagrant and ansible automation tools.

### Requirements

So far the lab has only been tested on a linux machine, but it should work as well on macOS. Ansible has some problems with Windows hosts so I don't know about that.

For the setup to work properly you need to install:
- **vagrant** from their official site [vagrant](https://www.vagrantup.com/). The version you can install through your favourite package manager (apt, yum, ...) is probably not the latest one.
- **ansible** following the extensive guide on their website [ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html).

Vagrant will be needed to provision the virtual machines and ansible to automate their configuration.

### Setup

The default domain will be cyberloop/local, on the subnet 192.168.56.1/24 and each machine has only been allocated with 1024MB of memory. If you want to change some of these settings some small modifications are required inside the configuration files.

To have the lab up and running the two commands you need to run are:
- `vagrant up`
- `ansible-playbook -i hosts --user=vagrant labsetup.yml`

### Thanks to

This repo is based on the work of [jckhmr](https://github.com/jckhmr/adlab) and [kkolk](https://github.com/kkolk/mssql). I had to do some changes to have the lab working properly for my configuration, but the majority is copied and pasted from their repos.
