provider "aws" {
  region     = "us-east-1"
} 

terraform {
  backend "s3" {
    bucket = "champ-bucket"
    key    = "dev/tfstate"
    region = "us-east-1"
  }
}

resource "aws_vpc" "gtb-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "gtb-vpc"
  }
}

resource "aws_subnet" "gtb-subnet" {
  vpc_id     = aws_vpc.gtb-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "gtb-subnet"
  }
}