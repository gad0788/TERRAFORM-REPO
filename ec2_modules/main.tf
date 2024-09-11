
# Ec2_instance resource block
resource "aws_instance" "webserver" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "Terraform-server"
  }
}
