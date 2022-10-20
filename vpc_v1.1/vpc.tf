resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "${var.env}-vpc"  
  }
}
resource "aws_subnet" "public_subnet1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet1_cidr
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"
  tags = {
    "Name" = "${var.env}-pub-sub-1"
  }
}
resource "aws_subnet" "public_subnet2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet2_cidr
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1b"
  tags = {
    "Name" = "${var.env}-pub-sub-2"
  }
}
resource "aws_subnet" "public_subnet3" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet3_cidr
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1c"
  tags = {
    "Name" = "${var.env}-pub-sub-3"
  }
}
resource "aws_subnet" "private_subnet1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet1_cidr
  availability_zone = "us-east-1a"
  tags = {
    "Name" = "${var.env}-priv-sub-1"
  }
}
resource "aws_subnet" "private_subnet2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet2_cidr
  availability_zone = "us-east-1b"
  tags = {
    "Name" = "${var.env}-priv-sub-2"
  }
}
resource "aws_subnet" "private_subnet3" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet3_cidr
  availability_zone = "us-east-1c"
  tags = {
    "Name" = "${var.env}-priv-sub-3"
  }
}