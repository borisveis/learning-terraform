data "aws_ami" "app_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["bitnami-tomcat-*-x86_64-hvm-ebs-nami"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["979382823631"] # Bitnami
}


variable "account" {
  default = "123123123123"
}
resource "aws_vpc" "myvpn"{
  cidr_block = "192.168.0.0/16"
  instance_tenancy = "default"
  enable_dns_hostnames =true
  tags = {
    name="myvpc"
  }
}