terraform {
  required_verion = ">=1.1.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.14.0"
    }
  }
}
