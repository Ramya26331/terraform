provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-03d0482bdae49b626"
instance_type = "t2.medium"
tags = {
name = "ramya"
}
}

