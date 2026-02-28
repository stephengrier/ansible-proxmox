#!/bin/ash
apk add sshpass openssh-client
ansible-galaxy install -r requirements.yml
ansible-playbook -k --ask-vault-password $1
