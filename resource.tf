variable "aws-vpc-cidr" {
    type    = string
    default = "10.0.0.0/16"


}
# Create VPC

resource "aws_vpc" "stirling_vpc" {
    cidr_block       = var.aws-vpc-cidr
    instance_tenancy = "default"
    tags = {
      Name      = "stirling_vpc"
      Terraform = "True"

    }
  
}