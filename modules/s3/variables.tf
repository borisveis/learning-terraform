resource "random_string" "random" {
  length           = 16
  special          = true
  override_special = "/@£$"
}
resource "aws_s3_bucket" "general_s3" {
  bucket = "s3bucket"
  tags = {
    Name="s3bucket"
  }
  }