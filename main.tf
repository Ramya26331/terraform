provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  count         = 4
  ami           = "ami-0f214d1b3d031dc53"
  instance_type = "t2.micro"
  tags = {
    Name = "ramya"
  }
}

