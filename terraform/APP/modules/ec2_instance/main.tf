
resource "aws_instance" "ec2_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  ebs_block_device {
    device_name = "/dev/sdf"
    volume_id   = var.volume_id
  }

  tags = {
    Name = "group6"
  }
}


output "public_ip" {
  value = aws_instance.ec2_instance.public_ip
}









#dilhanGunes