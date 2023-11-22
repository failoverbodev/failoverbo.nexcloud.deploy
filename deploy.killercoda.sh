#!/bin/sh
  
echo "Init creating ssh key to verify conectivity...."

sudo apt install software-properties-common

sudo add-apt-repository --yes --update ppa:ansible/ansible

sudo apt install ansible git net-tools

ssh-keygen -q -b 2048 -t rsa -N "" -C "creating SSH" -f KEY-UBUNTU

chmod 400 KEY-UBUNTU

cat KEY-UBUNTU.pub >> ~/.ssh/authorized_keys

git clone https://github.com/failoverbodev/failoverbo.nextcloud.git

ansible -i hosts -m ping all
