variable "availabilityzone" {
  type = string
  default = "us-west-1a"
}
variable "counter" {
  type = number
  default = 1

}

variable "instancecount" {
  type = number
  default = 1
}variable "instancenameprefix" {
  type = string
  default = "instancenum"
  }
variable "amiid" {
  type = string
  default ="aws_ami.app_ami.id"
}
variable "instancetype" {
  type = string
  default = "t3.nano"
}