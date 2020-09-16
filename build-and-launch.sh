#!/bin/bash
echo "Doing packer build"
ARTIFACT=`packer build -machine-readable packer-example.json |awk -F, '$0 ~/artifact,0,id/ {print $6}'`
echo "Get the AMI_ID"
AMI_ID=`echo $ARTIFACT | cut -d ':' -f2`
echo "Put the AMI_ID into the amivar.tf"
echo 'variable "AMI_ID" { default = "'${AMI_ID}'" }' > amivar.tf
echo "Terraform Init"
terraform init
echo "Terraform apply"
terraform apply
