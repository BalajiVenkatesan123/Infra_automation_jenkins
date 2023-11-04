// Terraform configuration block with version constrain
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.16.0"
    }

     null = {
      source = "hashicorp/null"
      version = "3.2.1"
    }
  }
}

// provider block with region specified
provider "aws" {
  region = "ap-south-1"
  
}
