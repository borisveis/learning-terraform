output "instance2_ip_public_ip" {
  value = aws_instance.instance2.public_ip
}
output "wev_ip_associate_public_ip_address" {

  value = aws_instance.web.associate_public_ip_address
}
