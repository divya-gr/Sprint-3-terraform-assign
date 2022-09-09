resource "aws_instance" "web" {
  ami           ="ami-0ff8a91507f77f867"
  instance_type = "t2.micro"

  tags = {
    Name = var.name
  }
}
resource "aws_s3_bucket" "b" {
  bucket = var.bucket_name2

  tags = {
    Name        = "My-bucket-1"
    Environment = "Dev"
  }
}