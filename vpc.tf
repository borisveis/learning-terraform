resource "aws_vpc" "main" {

  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Project VPC"
  }
}
  resource "aws_subnet" "prod-subnet-public-1" {
    vpc_id                  = "${aws_vpc.main.id}"
    cidr_block              = "10.0.1.0/24"
    map_public_ip_on_launch = "true" # This is what makes it a public subnet
    availability_zone       = var.availabilityzone

    }