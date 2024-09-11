# Define provider
provider "aws" {
  region = "us-east-1"  # specify your region
}
# Create an SNS topic
resource "aws_sns_topic" "my_sns_topic" {
  name = "my-sns-topic"
}

# Subscribe an email to the SNS topic
resource "aws_sns_topic_subscription" "my_email_subscription" {
  topic_arn = aws_sns_topic.my_sns_topic.arn
  protocol  = "email"
  endpoint  = "r1gady@yahoo.fr"  # Replace with your email address
}
