#!/usr/bin/env bash

packer init -upgrade ./packer_templates
packer build -only=virtualbox-iso.vm -var-file=./os_pkrvars/centos/centos-stream-9-gsb-x86_64.pkrvars.hcl ./packer_templates
