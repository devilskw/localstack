clear
rm -rf .terraform.lock.hcl
rm -rf terraform_plan
rm -rf terraform.tfstate
terraform init
# terraform validate
terraform plan -out=./terraform_plan # -var-file=./inventories/local/inventory.tfvars
echo '############################################'
echo '############################################'
echo '############################################'
echo '############################################'
terraform apply "./terraform_plan"
terraform destroy