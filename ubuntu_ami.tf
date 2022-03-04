data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["aws-marketplace"]

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86"]
  }

  filter {
    name   = "image-type"
    values = ["machine"]
  }

  filter {
    name   = "name"
    values = ["Ubuntu 18.04*"]
  }
}

resource "aws_instance" "test-ubuntu" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "test-ubuntu"
  }
}
