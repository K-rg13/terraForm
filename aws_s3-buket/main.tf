resource "aws_s3_bucket" "abc" {
  provider = aws
  bucket = var.bucketname
  tags = {
    environment = "dev"
  }
}