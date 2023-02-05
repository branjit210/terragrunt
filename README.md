##############################################################
#####  TERRAFORM COMMANDS
##############################################################

terraform init -backend-config=backend/dev.tfvars -reconfigure

terraform plan -var-file=env/dev.tfvars
terraform plan -var-file=env/dev.tfvars -target="module.s3"

terraform apply -var-file=env/dev.tfvars -auto-approve
terraform apply -var-file=env/dev.tfvars -target="module.s3" -auto-approve


terraform destroy -var-file=env/dev.tfvars -auto-approve
terraform destroy -var-file=env/dev.tfvars -target="module.s3" -auto-approve