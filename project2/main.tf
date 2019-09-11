
#
# Using backend  app.terraform.io
#

terraform {
  backend "remote" {
    organization = "PITONic"
    workspaces {
      name = "project2"
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
    Name = "Project -2 "
    Name2 = "ec2-2"
    }
 
}


resource "aws_instance" "my_ubuntu-www" {
 
 ami = "ami-0b898040803850657"
 instance_type = "t2.micro"
  tags = {
    Name = "SERVER-2 Project -2 "
    Name2 = "ec2-2"
    }
 
}


resource "aws_instance" "my_ubuntu-3" {
 
 ami = "ami-0b898040803850657"
 instance_type = "t2.micro"
  tags = {
    Name = "SERVER-3 Project -2 "
    Name2 = "ec2-33332"
    }
 
}

