#!/bin/bash

export ANSIBLE_SSH_ARGS=" -F ssh_config"
exec ansible-playbook -c ssh $*
