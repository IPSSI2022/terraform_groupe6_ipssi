variable "access_key" {
  description = "AWS Access Key ID"
}

variable "secret_key" {
  description = "AWS Secret Access Key"
}

variable "region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "availability_zone" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 Instance Type"
  default     = "t2.micro"
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
}

variable "security_group_name" {
  description = "Security Group Name"
  default = "group6"
}

variable "security_group" {
  description = "Security Group"
    default = "group6"
}

variable "aws_security_group" {
  description = "Security Group"
}

variable "key_pair_name" {
  description = "Key Pair Name"
}

variable "private_key_path" {
  description = "Path to the private key"
}

variable "volume_size" {
  description = "Size of the EBS volume"
  default     = 10
}

#dilhangunes