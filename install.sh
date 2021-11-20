#!/bin/bash
set -x
set -e
PATH=/usr/local/bin:$PATH

# install git
sudo dnf install git

# install ansible
sudo dnf install oracle-epel-release-el8
sudo dnf install ansible
