resource "aws_s3_bucket" "b" {
  bucket = "terraform-state-singapore"
  acl    = "private"

  tags = {
    Name = "terraform-state-singapore"
  }
}

