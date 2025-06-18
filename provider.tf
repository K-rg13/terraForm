provider "aws" {
  # region = "us-west-2"
  region = "us-west-1"
  # alias = "aws-us-west1" //
}

# terraform {
#   backend "s3" {
#     bucket = "terraformstatefilejb"
#     key = "env/dev/terraform.tfstate" //state file location in s3
#     region = "us-west-1"
#   }
# }