#!/bin/bash

curr_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $curr_dir/ec2.config

# Boostraps the local and remote resources
pushd config > /dev/null
./ec2.py --refresh-cache
./ec2.py --list
popd > /dev/null