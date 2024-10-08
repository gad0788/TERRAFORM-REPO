terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.66.0"
    }
  }
}
provider "aws" {
  region  = var.region_name
  profile = var.profile
}