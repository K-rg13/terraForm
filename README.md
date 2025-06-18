# terraForm

terraform plan -var-file ="dev.tfvars" #use to create resources with variables file inputs

terraform apply -var-file ="dev.tfvars"

through this strategy you are creating seprate state files for each environment so that resources are not impacted on execution this will create state file for qa terraform plan -var-file="qa.tfvars" -state="qa.tfstate" terraform apply -var-file="qa.tfvars" -state="qa.tfstate"

this will create state file for dev

terraform plan -var-file="dev.tfvars" -state="dev.tfstate" terraform plan -var-file="dev.tfvars" -state="dev.tfstate"