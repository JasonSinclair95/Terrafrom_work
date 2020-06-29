provider "aws" {
  region                  = "eu-west-2"
  shared_credentials_file = "/home/ubuntu/.aws/credentials"
}

module "SG" {
  source = "./SG"
  vpc_id = module.VPC.vpc_id

}

module "EC2" {
  source = "./EC2"
  public_subnet_id = "module.VPC.public_subnet"
  vpc_security_group_ids = module.SG.aws_wsg_id
}

module "VPC" {
source = "./VPC"
}