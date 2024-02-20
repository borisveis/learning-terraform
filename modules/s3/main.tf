resource "aws_s3_bucket" "bucket" {}
resource "aws_s3_object" "somefiles" {
  bucket = aws_s3_bucket.bucket.id
  for_each =fileset(var.uploadfilepath,"*" )
    key    = each.value
  source = "./${each.value}"
    content_type = "text"
}