resource "aws_s3_bucket" "mr-bucket" {
  bucket = "awp-testing-tf"
}

resource "aws_s3_bucket_acl" "acl" {
  bucket = aws_s3_bucket.mr-bucket.id
  acl = "public-read"
}