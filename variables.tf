#variable "instance_type" {
#  description = "Type of EC2 instance to provision"
#  default     = "t3.nano"
#}
variable "instancecount" {
  type    = number
  default = 1
}
variable "instancenameprefix" {
  type    = string
  default = "instancedefaultname"
}