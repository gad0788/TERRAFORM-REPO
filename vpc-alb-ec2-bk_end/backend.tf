# Remote backend n only one person can make change at time and locking using Dynamodb
terraform {
  backend "s3" {
    bucket         = "bakend-gn-terraform"
    key            = "bakend/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "state-log"
  }
}