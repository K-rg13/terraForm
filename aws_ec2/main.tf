resource "aws_instance" "abc1" {
    # depends_on = [ aws_s3_bucket.abc ] //used when one resource is depents on other ex: sql server and sql db.
#   ami= "ami-05f991c49d264708f" //west-2
    ami=  var.ami //west-1 "ami-014e30c8a36252ae5"
    instance_type = var.instancetype  // size of instance "t2.micro"
    subnet_id = var.subnetid //subnet id for newtwor issue data.aws_subnet.selected.id
    associate_public_ip_address = true
    tags = {
    Name = "ec2-instance-${var.instance_index}"  # 👈 Use the index
  }
}