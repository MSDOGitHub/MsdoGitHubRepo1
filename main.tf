provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.inst_type
  key_name      = "key-pair"
  vpc_security_group_ids=["sg-0ef30d3a26c62abcd"]
  subnet_id     = "subnet-02d20b5b1c9456784"

  tags = {
    Name = var.ec2_name
  }
}
