resource "aws_instance" "dev_server" {
  ami           = var.ami_instance
  instance_type = var.instance_type
  key_name      = "ec2_key"
}