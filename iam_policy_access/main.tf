# Define provider
provider "aws" {
  region = "us-east-1"  # specify your region
}

# Create IAM Role
resource "aws_iam_role" "s3_list_role" {
  name = "s3-list-role"
  
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}

# Create IAM policy to list all S3 buckets
resource "aws_iam_policy" "s3_list_policy" {
  name        = "S3ListPolicy"
  description = "Policy to list all S3 buckets"
  
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action   = "s3:ListAllMyBuckets",
        Effect   = "Allow",
        Resource = "*"
      }
    ]
  })
}

# Attach policy to the role
resource "aws_iam_role_policy_attachment" "attach_policy" {
  role       = aws_iam_role.s3_list_role.name
  policy_arn = aws_iam_policy.s3_list_policy.arn
}
