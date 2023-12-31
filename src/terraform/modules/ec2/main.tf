
resource "aws_instance" "webserver" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [var.security_group_id]
  subnet_id     = var.public_subnet_id
  tags = {
    Name = "web_server"
  }
}
