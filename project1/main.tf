
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

resource "aws_instance" "Database_server" {
 
 ami = "ami-0b898040803850657"
 instance_type = "t2.micro"
  tags = {
    Name = "WebServer"
    }
}


