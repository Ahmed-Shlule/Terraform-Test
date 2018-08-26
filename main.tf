provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "ahmedinstance" {
  ami           = "ami-e1768386"
  instance_type = "t2.micro"

  tags {
    Name = "Ahmed-Instance1"
  }
}
