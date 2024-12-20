resource "aws_instance" "main" {
  ami                         = var.ami_id
  instance_type              = var.instance_type
  subnet_id                  = var.subnet_id
  vpc_security_group_ids     = [var.security_group_id]
  associate_public_ip_address = true

  tags = {
    Name = "academy-ec2"
  }
}