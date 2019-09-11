

provider "aws" {
 region  = "us-east-1"
}

resource "aws_instance" "WebServer" {
 
 ami = "ami-0b898040803850657"
 instance_type = "t2.micro"
  tags = {
    Name = "WebServer_p2"
    }
 
}
