variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public Subnet CIDR values"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}
variable "vpcname" {
  type = string
  default = "vpcvar"
}
variable "uploadfilepath" {
  type = string
  default = "./*"
}