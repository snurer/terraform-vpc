resource "aws_instance" "dev_instance" {
  ami                    = data.aws_ami.amazon_linux_2.image_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet1.id
  key_name               = data.aws_key_pair.TerraformServerKey.key_name
  vpc_security_group_ids = [ aws_security_group.web.id ]
  user_data              = data.template_file.user_data.rendered

  tags = {
    Name        = "${var.env}-instance"   
    Name2       = format("%s-instance", var.env)
  }
}
