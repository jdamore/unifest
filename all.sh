#!/bin/bash

# Lists all available resources
pushd ec2 > /dev/null
ec2-describe
popd > /dev/null