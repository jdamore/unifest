#!/bin/bash

# Create a new resource
pushd ec2  > /dev/null
ec2-create -a ami-d0ba0cb8 -s m1.small
popd > /dev/null