provider "aws" {
  region = "us-east-1"
}

provider "random" {}

resource "random_id" "bucket_id" {
  byte_length = 4
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "mentoriadevops-${random_id.bucket_id.hex}"

  acl           = "private"

  tags = {
    Name        = "mentoria-devops"
    Environment = "Production"
  }
}
