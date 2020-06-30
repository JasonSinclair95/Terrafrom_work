output "vpc_id" {
  value = aws_vpc.Terraform-VPC.id
}

output "public_subnet" {
  value = aws_subnet.public_subnet.id
}

output "gateway_id" {
  value = aws_internet_gateway.internet_gateway.id
}

