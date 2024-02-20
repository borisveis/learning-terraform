resource "aws_vpc" "vpc1" {
  cidr_block = var.public_subnet_cidrs
  enable_dns_hostnames = true
  tags = {
#    Name=var.vpcname
    Name=var.
  }
  }