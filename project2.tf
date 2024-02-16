provider "aws" {
  alias  = "backup"
  region = "us-east-2" # Change this to your desired region
}

resource "aws_instance" "terraform2" {
  ami           = "ami-05fb0b8c1424f266b" # AMI ID for your desired OS
  instance_type = "t2.micro"               # Instance type
  key_name      = "terraform2"               # Name of your existing key pair

  tags = {
    Name = "Terraproject2"
  }
}
