resource "aws_s3_bucket" "My-gtb-bucket" {
  bucket = "gtb-test-bucket"

  tags = {
    Name        = "My-gtb-bucket"
    Environment = "Dev"
  }
}