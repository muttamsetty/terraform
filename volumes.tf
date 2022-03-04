resource "aws_ebs_volume" "my_volume" {
  availability_zone = "us-east-1a"
  size              = 40

  tags = {
    Name = "my_volume"
  }
}
