resource "aws_s3_bucket" "b" {
  bucket = var.bucket_name

  tags = {
    Name        = "My-bucket-1"
    Environment = "Dev"
  }
}
#resource "aws_s3_bucket_acl" "example" {
  # bucket = var.bucket_name
 # bucket = aws_s3_bucket.b.id
  #acl = var.acl
#}
