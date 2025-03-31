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

#api subnet
resource "aws_subnet" "api-subnet" {
  vpc_id     = aws_vpc.mytf-vpc.id
  cidr_block = "10.0.2.0/24"
  map_public_ip_on_launch  = "true"

  tags = {
    Name = "api-subnet"
  }
}

#db subnet
resource "aws_subnet" "db-subnet" {
  vpc_id     = aws_vpc.mytf-vpc.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "db-subnet"
  }
}
