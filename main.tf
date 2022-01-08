provider "aws" {

    version = "~> 3.0"
    region = "us-east-1"
    profile = "default"
}

resource "aws_key_pair" "deployer" {

    key_name = "deployer-key"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCYPU74JOYO7+dxo8RkpyQjv9MQWYzP/mc/aK94zc3C0KnEfcxP7dlzGLJk1QvZpvYrrg2Fs2ML75bXF9o/nVB4Btp+cyNEPBzVJuVLUp0QU3mVu4Z9qFpmP41u2U9lkAOy6Kj/bMoPkce1tvIkV//Sx18k0bpgwgGGCAq+2h1aKMfbZmfO9Mrq7MeKtuJIzGunnK2B8kvzaHKVclaiI8TX5pZH1awKLH/HAwwtOTn7FG1QJnNUeoQ4T3KbDsmtBDUF4nqy5sYPzoSvDNIOo+mqf8m0/ePUMrDvcDfsQjtPABDjcnV8NPgr/tp8i4fsZWdQOxiKqazzGtdN2bOozyOh"
}

resource "aws_instance" "Terraform-Demo" {
    ami = var.ami_id
    instance_type = "t2.micro"
    vpc_security_group_ids = var.sg_id
    subnet_id = var.pub_sub_id
    key_name = aws_key_pair.deployer.key_name
    tags = {
        "Name" = "ec2-instance-Terraform-Hamza"
    }
  
}