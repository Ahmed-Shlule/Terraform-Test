terraform {
  required_version = ">= 0.8, < 0.11"
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "example" {
  ami		= "ami-01419b804382064e4"
  instance_type = "t2.micro"

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF
              
  tags {
    Name = "terraform-example"
  }
}
