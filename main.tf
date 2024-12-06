provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  ami           = "ami-0208b77a23d891325"
  instance_type = "t2.micro"
  tags = {
    Name = "raham-server"
  }
}
