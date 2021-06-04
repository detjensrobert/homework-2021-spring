#!/bin/sh

# create ansible key
mkdir -p /root/.ssh
test -f /root/.ssh/ansible || ssh-keygen -f /root/.ssh/ansible -N ''

# copy ansible key to other hosts
apt install sshpass -y  # use sshpass for non-interactive password prompt
sshpass -p root ssh-copy-id -i /root/.ssh/ansible root@client

# run ansible
ansible-playbook /ansible/webserver.yml -i /ansible/hosts.ini
