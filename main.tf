provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-03d0482bdae49b626"
instance_type = "t2.medium"
key_name = "jaikeypair"
vpc_security_group_ids = ["sg-00c149e94e24198ce"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2"]
}
