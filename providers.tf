provider "aws" {
  access_key = "${var.aws_access_key_id}"
  secret_key = "${var.aws_secret_access_key}"
  region = "${var.aws_region}"
}

terraform {
  backend "s3" {
    encrypt = true
    bucket = "${aws_s3_bucket.terraform-state-bucket.bucket}"
    dynamodb_table = "${aws_dynamodb_table.terraform-lock-dynamodb.name}"
    key    = "assign/terraform.tfstate"
    region = "${var.aws_region}"
  }
}

resource "aws_s3_bucket" "terraform-state-bucket" {
    bucket = "assign-terraform-state-bucket-${random_id.suffix.hex}"
 
    versioning {
      enabled = true
    }
 
    lifecycle {
      prevent_destroy = true
    }
    
}

resource "aws_dynamodb_table" "terraform-lock-dynamodb" {
  name = "terraform-state-lock-${random_id.suffix.hex}"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
}

