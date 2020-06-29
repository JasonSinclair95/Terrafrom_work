variable "vpc-cidr-block" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "pub-sub-block1" {
  description = "public cidr block for subnet"
  default     = "10.0.10.0/24"
}

variable "enable_dns_hostnames" {
  description = "do you want to enable dns hostname"
  default = true
}