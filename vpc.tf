/*----------------------------------------
Define the VPC Network
----------------------------------------*/
resource "aws_vpc" "vpc_demo" {
  cidr_block = "172.31.0.0/16"
  tags = {
    Name = "VpcTerraform"
  }
}

/*----------------------------------------
Define the Subnet
----------------------------------------*/
resource "aws_subnet" "sb_demo1" {
 cidr_block = "172.31.0.0/24"
 vpc_id = "${aws_vpc.vpc_demo.id}" 
 availability_zone = "us-east-1a"
 tags = {
    Name = "SubnetTerraform"
  }
}



