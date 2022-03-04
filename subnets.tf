resource "aws_subnet" "public_1" {
  # The VPC ID to create in.
  vpc_id = aws_vpc.my_vpc.id

  # The CIDR block for the subnet.
  cidr_block = "192.168.0.0/18"

  # The AZ for the subnet.
  availability_zone = "us-east-1a"

resource "aws_subnet" "public_2" {
  # The VPC ID to create in.
  vpc_id = aws_vpc.my_vpc.id

  # The CIDR block for the subnet.
  cidr_block = "192.168.64.0/18"

  # The AZ for the subnet.
  availability_zone = "us-east-1b"

resource "aws_subnet" "private_1" {
  # The VPC ID to create in.
  vpc_id = aws_vpc.my_vpc.id

  # The CIDR block for the subnet.
  cidr_block = "192.168.128.0/18"

  # The AZ for the subnet.
  availability_zone = "us-east-1a"

resource "aws_subnet" "private_2" {
  # The VPC ID to create in.
  vpc_id = aws_vpc.my_vpc.id

  # The CIDR block for the subnet.
  cidr_block = "192.168.192.0/18"

  # The AZ for the subnet.
  availability_zone = "us-east-1b"
