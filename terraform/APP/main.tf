provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}

module "ebs_volume" {
  source = "./modules/ebs_volume"
  volume_size = var.volume_size
}

module "public_ip" {
  source = "./modules/public_ip"
  security_group_name = var.security_group_name
}

module "security_group" {
  source = "./modules/security_group"
  security_group_name = var.security_group_name
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  instance_type       = var.instance_type
  ami                 = var.ami
  key_name            = var.key_pair_name
  security_group_name = var.security_group_name
  security_group = var.security_group
  volume_id           = module.ebs_volume.volume_id
  public_ip           = module.public_ip.public_ip
  aws_security_group  = var.aws_security_group

}

resource "null_resource" "install_nginx" {
  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install -y nginx",
      "echo ${module.ec2_instance.public_ip} > ip_ec2-projet.txt"
    ]
    connection {
      type        = "ssh"
      host        = module.ec2_instance.public_ip
      user        = "ubuntu"
      private_key = file(var.private_key_path)
    }
  }
}


#DilhanGunes