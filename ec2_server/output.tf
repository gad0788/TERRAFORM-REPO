output "instance_public_ip" {
  value = aws_instance.dev_server.public_ip
}
output "ssh_command" {
  value = "ssh -i ec2_key.pem ec2-user@${aws_instance.dev_server.public_ip}"
}