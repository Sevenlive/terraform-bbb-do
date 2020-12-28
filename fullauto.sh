#!/bin/bash
ssh-keygen -t rsa -b 4096 -C "Auto Install SSH-Key" -N "" -f "digital_ocean_key" -q 
terraform init
terraform plan
terraform apply -auto-approve
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i inventory bbbplaybook.yml