provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "example" {
  ami		= "ami-01419b804382064e4"
  instance_type = "t2.micro"

  tags {
    Name = "terraform-example"
  }
}
