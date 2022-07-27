provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "my-first-server" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type =  "t2.micro"
    key_name = "omolade"
}


resource "aws_security_group" "ec2-security-group-dev" {
    name        = "ec2-security-group-dev"
    description = "New EC2 Security group for HTTP/HTTPS and SSH Ports"
    ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
    ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
    ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }


}