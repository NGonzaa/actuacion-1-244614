resource "aws_vpc" "ig-244614-ac1-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "ig-244614-ac1-vpc"
  }
}

resource "aws_subnet" "ig-244614-ac1-subnet" {
  vpc_id     = aws_vpc.ig-244614-ac1-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "ig-244614-ac1-subnet"
  }
}