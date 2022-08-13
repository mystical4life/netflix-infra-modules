resource "aws_instance" "ike-web" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  associate_public_ip_address = true
  vpc_security_group_ids = [var.sg_id]
  
  tags = {
    Name = "ike-web"
  }
}