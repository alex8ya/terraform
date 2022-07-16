terraform {
  backend "s3" {
    bucket = "awp-tf-backend"
    key = "vickysbackend.tfstate"
    region = "us-east-1" 
    dynamodb_table = "terraformtable"
  }
}