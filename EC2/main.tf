resource "aws_instance" "Terraform" {
  ami           = var.ami
  instance_type = var.type
  key_name = var.key_name
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [var.vpc_security_group_ids]

  tags = {
    Name = "Terraform"
  }
}
