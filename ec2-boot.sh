#!/bin/bash

curr_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $curr_dir/ec2.config

# Boostraps the local and remote resources
pushd config > /dev/null
ansible-playbook -i ec2.py bootstrap.yml
popd > /dev/null