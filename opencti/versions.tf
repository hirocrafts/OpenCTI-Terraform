terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.20.0"
    }
  }
  # backend "s3" {
  #   encrypt = true
  # }
  required_version = ">= 1.1.0"
}
