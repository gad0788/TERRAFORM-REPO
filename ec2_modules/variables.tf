variable "ami" {
  description = "AMI to use for instances. Defaults to Amazon linux 2"
  default = "ami-02d7fd1c2af6eead0"
  type = string
}
variable "instance_type" {
  default = "t2.micro"
}
variable "region_name" {
  default = "us-east-1"
}
variable "profile" {
  default = "default"
}