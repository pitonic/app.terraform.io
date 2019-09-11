
#
# Using backend  app.terraform.io
#

terraform {
  backend "remote" {
    organization = "PITONic"
    workspaces {
      name = "clouds_piton"
    }
  }
}


provider "aws" {
 region  = "us-east-1"
} 
