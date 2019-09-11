provider "aws" {
  region                  = "us-east-1"
 }



resource "aws_instance" "my_ubuntu" {
 # Please check "AMI"  different on each region    
 ami = "ami-0b898040803850657"
 instance_type = "t2.micro"
 # If default VPC deleted, please define -> subnet_id ="subnet-123aaa"
 #   
 # subnet_id     = "subnet-01ec8cd3246f04afa"
 
}
