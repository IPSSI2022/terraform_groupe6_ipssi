variable "instance_type" {
  description = "EC2 Instance Type"
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
}

variable "key_name" {
  description = "Key Pair Name"
}

variable "security_group_name" {
  description = "Security Group Name"
  default = "security_group6"
}

variable "aws_security_group" {
  description = "Security Group Name"
  default = "security_group6"
}


variable "security_group" {
  description = "Security Group Name"
  default = "security_group6"

}

variable "volume_id" {
  description = "ID of the EBS volume"
}

variable "public_ip" {
  description = "Public IP address"
}






#dilhangunes