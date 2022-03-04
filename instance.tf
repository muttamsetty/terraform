resource "aws_instance" "test" {
  ami               = "ami-08b6f2a5c291246a0"
  availability_zone = "us-east-1a"
  instance_type     = "t2.micro"

  tags = {
    Name = "test"
  }
}
