
#
# Using backend  app.terraform.io
#

terraform {
  backend "remote" {
    organization = "PITONic"
    workspaces {
      name = "project1"
    }
  }
}


provider "aws" {
 region  = "us-east-1"
}

resource "aws_instance" "my_ubuntu" {
 
 ami = "ami-0b898040803850657"
 instance_type = "t2.micro"
  tags = {
    Name = "super att"
    Name2 = "ec2-2"
    }
 
}

resource "aws_instance" "my_ubuntu" {
 
 ami = "ami-0b898040803850657"
 instance_type = "t2.micro"
  tags = {
    Name = "Project1-server2"
    Name2 = "ec2-2"
    }
 
}
