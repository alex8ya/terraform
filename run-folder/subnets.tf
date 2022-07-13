resource "aws_subnet" "sn1" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = "66.6.0.0/24"
  availability_zone = "us-east-1a"
  tags = {
    "Name" = "SnA"
  }
}

output "subnetid" {
  value = aws_subnet.sn1.*
}