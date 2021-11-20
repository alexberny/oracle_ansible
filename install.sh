#!/bin/bash
set -x
set -e
PATH=/usr/local/bin:$PATH

# install git
sudo dnf install git

# install ansible
sudo dnf install oracle-epel-release-el8
sudo dnf install ansible

# get ansible script
if [ ! -d oracle_ansible ]; then
    git clone https://github.com/alexberny/oracle_ansible.git
    cd oracle_ansible
else
    cd oracle_ansible
    git pull
fi 

ansible-playbook install.yml --ask-become-pass
