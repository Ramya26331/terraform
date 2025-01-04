provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
count           =  2
ami             = "0ca9fb66e076a6e32"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform"
  }
}
