#!/bin/bash
set -x
set -e
PATH=/usr/local/bin:$PATH

sudo dnf config-manager --add-repo https://yum.oracle.com/repo/OracleLinux/OL8/appstream/x86_64/
sudo dnf config-manager --add-repo https://yum.oracle.com/repo/OracleLinux/OL8/UEKR6/x86_64/


# install git
sudo dnf install git

# install ansible
sudo dnf install oracle-epel-release-el8
sudo dnf install ansible
