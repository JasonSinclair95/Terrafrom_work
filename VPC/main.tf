resource "aws_vpc" "Terraform-VPC" {
  cidr_block           = var.vpc-cidr-block
  enable_dns_hostnames = var.enable_dns_hostnames
  tags = {
    Name = "vpc-terraform"
  }
}


resource "aws_subnet" "public_subnet" {
  cidr_block              = var.pub-sub-block1
  vpc_id                  = aws_vpc.Terraform-VPC.id
  map_public_ip_on_launch = true
}


resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.Terraform-VPC.id
}


resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.Terraform-VPC.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id             = aws_internet_gateway.internet_gateway.id
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.route_table.id
}