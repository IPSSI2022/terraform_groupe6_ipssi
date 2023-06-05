

resource "aws_security_group" "security_group" {
  name        = var.security_group_name
  description = "Security Group for public IP"
}

resource "aws_eip" "public_ip" {
  vpc = true
  tags = {
    Name = "Public IP"
  }
}

output "public_ip" {
  value = aws_eip.public_ip.public_ip
}
