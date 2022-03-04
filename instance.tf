resource "aws_instance" "test" {
  #you can see amiid's in launch instance aws portal, note ami ids are different from each region
  ami               = "ami-08b6f2a5c291246a0"
  availability_zone = "us-east-1a"
  instance_type     = "t2.micro"

  tags = {
    Name = "test"
  }
}
