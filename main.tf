provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  count         = 4
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t2.medium"
  tags = {
    Name = "ramya"
  }
}

