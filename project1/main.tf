
#
# Using backend  app.terraform.io
#

terraform {
  backend "remote" {
    organization = "Nicol-labs"

    workspaces {
      name = "project-1"
    }
  }
}


provider "aws" {
 region                  = "us-east-1"
}

resource "aws_instance" "my_ubuntu" {
 
 ami = "ami-0b898040803850657"
 instance_type = "t2.micro"
 
}
