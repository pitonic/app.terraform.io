provider "aws" {
  region                  = "us-east-1"
 }



resource "aws_instance" "my_ubuntu" {
 # Please check "AMI"  different on each region    
 ami = "ami-0b898040803850657"
 instance_type = "t2.micro"

   tags {
    name = "project-2"
    }
}
