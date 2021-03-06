#!/bin/bash

## Pre-reqs
# - Ansible > 2.0
# - Botocore
# - Boto3
# - python 2. 7

ansible_code_dir="../../../ansible/"

# For Dynamic inventory
export AWS_REGION=eu-central-1
echo $AWS_REGION
# **** Only for localhost***
# **** ALL VM level configuration is done via ansible pull *****#

ansible-playbook -i $ansible_code_dir/hosts/ec2.py $ansible_code_dir/site-ecs-delete.yml --extra-vars \
"env=development
region=eu-central-1
log_group_name=/ecs/development-logs
"

