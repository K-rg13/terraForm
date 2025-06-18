data "aws_subnet" "selected" {
  id = "subnet-02c413877bb532ef2" //west-1
}

module "aws_ec2" {
  source = "./aws_ec2"
#   providers = {
#     alias = "aws-us-west1"
#   }
  ami= "ami-014e30c8a36252ae5" // we can pass this using variables
  instancetype = "t2.micro"
  subnetid = data.aws_subnet.selected.id
}

module "aws_s3-bucket" {
  source = "./aws_s3-buket"
  bucketname = var.bucketname1[0]
}



















// without modue structure below

# places in s3 folder
# resource "aws_s3_bucket" "abc" {
#   provider = aws
# #   count = 3 // to avoid same prefix
#     count = length(var.bucketname1)
#   bucket = var.bucketname1[count.index]
#   tags = {
#     environment = "dev"
#   }
# }

# including count to reduce the redundency
# resource "aws_s3_bucket" "abc1" {
#   provider = aws
#   bucket = var.bucketname2
#   #acl = "public-read"
# }

# placed in ec2 folder

# ami id will be in website of aws where we create instance
# resource "aws_instance" "abc1" {
#     # depends_on = [ aws_s3_bucket.abc ] //used when one resource is depents on other ex: sql server and sql db.
# #   ami= "ami-05f991c49d264708f" //west-2
#     ami= "ami-014e30c8a36252ae5" //west-1
#     instance_type = "t2.micro"  // size of instance
#     subnet_id = data.aws_subnet.selected.id //subnet id for newtwor issue
#     associate_public_ip_address = true
# }
