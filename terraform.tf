provider "aws" {
    region = "ap-south-1"
    access_key = "AKIASIFU2EOZNEKGHWXM"
    secret_key = "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"
}


resource "aws_instance" "ubuntu" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t2.micro"

  tags = {
    Name = "kub-master"
  }
}

resource "aws_key_pair" "key" {
  key_name   = "mykub"
  public_key = file("~/Users/sumit/.ssh/mykub.pub") 
}

resource "aws_security_group" "K-8" {
  name        = "K-8"

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = "0.0.0.0/0"
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = "0.0.0.0/0"
  }
    ingress {
    from_port        = 9090
    to_port          = 9090
    protocol         = "tcp"
    cidr_blocks      = "0.0.0.0/0"
  }
    ingress {
    from_port        = 3000
    to_port          = 3000
    protocol         = "tcp"
    cidr_blocks      = "0.0.0.0/0"
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "K-8"
  }
}


resource "aws_ebs_volume" "volume" {
  availability_zone = "ap-south-1"  
  size              = "15"  
  type              = "gp2" 
  iops              = "100"
}

