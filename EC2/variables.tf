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
  default = "default value"
}

variable "vpc_security_group_ids" {
  default = "default value"
}

variable "key_name" {
  description = "public key for SSH"
  default = "project_key"
}