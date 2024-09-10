resource "aws_instance" "server1" {
  ami = "ami-02d7fd1c2af6eead0"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.sg1.id]
  availability_zone = "us-east-1a"
  subnet_id = aws_subnet.private1.id
  #ey_name = "ec2-key"
  user_data = file("userdata.sh")
  tags = {
    Name = "server1"
  }
}

resource "aws_instance" "server2" {
  ami = "ami-02d7fd1c2af6eead0"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.sg1.id]
  availability_zone = "us-east-1b"
  subnet_id = aws_subnet.private2.id
  #ey_name = "ec2-key"
  user_data = file("userdata.sh")
  tags = {
    Name = "server2"
  }
}