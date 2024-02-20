
variable "index" {
  type = number
  default =1
}
variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public Subnet CIDR values"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}
variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private Subnet CIDR values"
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}
#Name= "instance1"
resource "aws_instance" "instance1" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t3.nano"
  subnet_id = aws_subnet.prod-subnet-public-1.id
  tags = {
    Name= "instance1"
  }
}
resource "aws_instance" "instance2" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t3.nano"
  #  subnet_id = "${aws_vpc.main.id}"
  subnet_id     = aws_subnet.prod-subnet-public-1.id
  tags = {
    Name= "instance2"
  }
  }
#  vpc_id     = aws_vpc.main.id
#  cidr_block = element(var.public_subnet_cidrs, count.index)
#
#  tags = {
#  }
#}

#resource "aws_subnet" "private_subnets" {
#  count      = length(var.private_subnet_cidrs)
#  vpc_id     = aws_vpc.main.id
#  cidr_block = element(var.private_subnet_cidrs, count.index)
#
#  tags = {
#      Name = "Private Subnet ${count.index + 1}"
#  }
#}