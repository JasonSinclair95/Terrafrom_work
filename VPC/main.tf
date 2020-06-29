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