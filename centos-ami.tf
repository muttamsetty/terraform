data "aws_ami" "centos" {
  most_recent = true
  owners      = ["aws-marketplace"]

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "image-type"
    values = ["machine"]
}

  filter {
    name   = "name"
    values = ["CentOS Linux 7*"]
  }
}

resource "aws_instance" "test-centos" {
  ami           = data.aws_ami.centos.id
  instance_type = "t2.micro"

  tags = {
    Name = "test-centos"
  }
}
