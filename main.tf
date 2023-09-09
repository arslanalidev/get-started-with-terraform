terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
  required_version = ">= 1.2.0"
}
provider "aws" {
    region = "us-east-2"
}

resource "aws_instance" "app_server" {
    ami = "ami-0430580de6244e02e"
    instance_type = "t2.micro"
    
    tags = {
      Name = "ExampleAppServerInstance"
    }
}