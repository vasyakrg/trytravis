#!/bin/bash
# stage tests
cd ../terraform/stage
terraform init
terraform validate -var-file=terraform.tfvars.example
tflint

echo "go to test prod"
# prod tests
cd ../prod
terraform init
terraform validate -var-file=terraform.tfvars.example
tflint
