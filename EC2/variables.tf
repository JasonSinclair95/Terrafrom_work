variable "ami" {
  description = "london ubuntu machine"
  default     = "ami-00f6a0c18edb19300"
}

variable "type" {
  description = "size of machine"
  default     = "t2.nano"
}

variable "public_subnet_id" {
  description = "id of public subnet"
}

variable "vpc_security_group_ids" {
  description = "VPC Security Group IDs"
}

variable "key_name" {
  description = "public key for SSH"
  default = "SSHKey"
}

variable "associate_public_ip_address" {
  description = "Boolean value to determine Public IP Address"
  type        = bool
  default     = false
}