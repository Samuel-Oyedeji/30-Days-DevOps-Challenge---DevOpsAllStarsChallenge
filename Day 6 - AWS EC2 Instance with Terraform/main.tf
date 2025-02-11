##AWS EC2 with terraform
provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "<name_of_server>" {
  ami           = "ami-088b41ffb0933423f"
  instance_type = "t2.micro"

  tags = {
    Name = "<tag-your-server>"
  }
}
