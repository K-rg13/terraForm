resource "aws_ecr_repository" "abc1" {
  name  = var.ecr_name // "my-app-repo"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}