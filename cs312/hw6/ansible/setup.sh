#!/bin/sh

# create ansible key
mkdir -p /root/.ssh
ssh-keygen -f /root/.ssh/ansible -N ''

# copy ansible key to other hosts
apt install sshpass -y  # use sshpass for non-interactive password prompt
sshpass -p root ssh-copy-id -i /root/.ssh/ansible root@web1
sshpass -p root ssh-copy-id -i /root/.ssh/ansible root@web2

# run ansible
ansible-playbook /ansible/webserver.yml -i /ansible/hosts.ini

# verify state
echo
echo '== Verifying web1: =='
echo
curl web1

echo
echo '== Verifying web2: =='
echo
curl web2
