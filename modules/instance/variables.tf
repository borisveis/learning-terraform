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