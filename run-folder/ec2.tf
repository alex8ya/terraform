resource "aws_instance" "test-ec1" {
  count = "1"
  ami   = data.aws_ssm_parameter.linux2.value
  instance_type = var.instance_type
  tags  = var.tags
}

resource "aws_instance" "test-ec2" {
  count = "1"
  ami   = var.ami_id
  instance_type = var.instance_type
  tags  = var.tags
}

