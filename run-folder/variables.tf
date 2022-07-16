#If you want to imput variables without having them predefined use 
# terraform apply -var='ami_id="amivalue"' -var='instance_type="instancetype"' -var="tags=___"
#tag needs to be predefined in the resource as {Name = var.tags}

data "aws_ssm_parameter" "linux2" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-kernel-5.10-hvm-x86_64-gp2"
}

variable "ami_id" {
  default = "ami-0cff7528ff583bf9a"
}

variable "instance_type" {
  default = "t2.nano"
}

variable "tags" {
  default = {
    Name = "test"
    Createdby = "me"
  }
}