#!/bin/ash
apk add sshpass openssh-client
ansible-galaxy install -r requirements.yml
ansible-playbook -k --check --diff --ask-vault-password site.yml
