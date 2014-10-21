#!/bin/bash

curr_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $curr_dir/ec2.config

# Create a new resource
pushd config  > /dev/null
ansible-playbook -i local ec2.yml
popd > /dev/null