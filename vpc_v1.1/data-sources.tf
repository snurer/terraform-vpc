data "aws_ami" "amazon_linux_2" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

data "template_file" "user_data" {
  template = file("userdata.sh")
  vars = {
    environment = var.env
  }
}

# Get EC2 Key Pair
data "aws_key_pair" "TerraformServerKey" {
  key_name           = "TerraformServerKey"
  include_public_key = true

  filter {
    name   = "key-name"
    values = ["TerraformServerKey"]
  }

  filter {
    name   = "key-pair-id"
    values = ["key-09611aaf18cb0aba1"]
  }
  filter {
    name   = "fingerprint"
    values = ["c8:3e:8b:7f:73:6c:64:dc:b7:f8:cc:15:df:dd:d0:0f"]
  }
}

