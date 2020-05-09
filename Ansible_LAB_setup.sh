#!/bin/bash
sudo apt-get update
sudo apt-get install software-propetise-common -y
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible -y

echo "
172.17.10.120 controller
172.17.10.121 vls-node1
172.17.10.122 vls-node2
172.17.10.123 vls-node3
" >> /etc/hosts
