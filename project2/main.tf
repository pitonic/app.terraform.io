
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
