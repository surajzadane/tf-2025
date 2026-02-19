#VPC
resource "aws_vpc" "mytf-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "mytf-vpc"
  }
}

#web subnet
resource "aws_subnet" "web-subnet" {
  vpc_id     = aws_vpc.mytf-vpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch  = "true"

  tags = {
    Name = "web-subnet"
  }
}

resource "aws_internet_gateway" "web_gw" {
 vpc_id = aws_vpc.lms-vpc.id

 tags = {
   Name = "web_Internet_gw"
 }
}




