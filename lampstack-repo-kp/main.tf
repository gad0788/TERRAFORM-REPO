resource "aws_lightsail_instance" "server1" {
  name              = "lamp-server"
  blueprint_id      = "amazon_linux_2"   # Verify correct ID for CentOS Stream 9
  bundle_id         = "small_1_0"
  availability_zone = "us-east-1a"
  key_pair_name     = "lamp"
  user_data         = file("resume.sh")       # Ensure resume.sh is accessible
}
