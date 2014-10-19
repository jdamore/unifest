#!/bin/bash

# Deploys the site to the local and remote resources
pushd config > /dev/null
ansible-playbook -i local deploy.yml
ansible-playbook -i remote deploy.yml
popd > /dev/null