provider "aws" {
  region = "${var.aws_region}"
}

terraform {
  backend "s3" {
    encrypt = true
    bucket = "assign-terraform-state-bucket"
    dynamodb_table = "terraform-state-lock"
    key    = "assign/terraform.tfstate"
    region = "us-east-1"
  }
}


