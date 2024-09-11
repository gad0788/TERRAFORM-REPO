# Define provider
provider "aws" {
  region = "us-east-1"  # specify your region
}

# Create DynamoDB Table
resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-state-lock"  # The table name
  billing_mode = "PAY_PER_REQUEST"       # Automatically scales with the demand
  hash_key     = "LockID"                # Define the partition key (primary key)

  attribute {
    name = "LockID"                      # Attribute used as the partition key
    type = "S"                           # Data type for LockID (S for String)
  }

  # Optionally, define TTL (Time to Live) if you want the locks to expire after a certain time
  ttl {
    attribute_name = "TTL"               # Set this attribute if you want locks to expire automatically
    enabled        = false               # Set to true if you enable TTL
  }

  tags = {
    Name        = "terraform-state-lock"
    Environment = "production"
  }
}
