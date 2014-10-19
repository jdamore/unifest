#!/bin/bash

# Boostraps the local and remote resources
pushd config > /dev/null
ansible-playbook -i local bootstrap.yml
ansible-playbook -i remote bootstrap.yml
popd > /dev/null