##############################################################
#####  SECURITY GROUP terragrunt-sg-one
##############################################################

resource "aws_security_group" "sg-terragrunt-one" {
  name        = "terragrunt-sg-one"
  description = "sg-terragrunt-one"
  vpc_id      = "vpc-75d93a08"

  ingress {
    description      = "sg-terragrunt-one"
    from_port        = 8090
    to_port          = 8090
    protocol         = "tcp"
    cidr_blocks      = ["76.187.30.213/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
#    cidr_blocks      = ["0.0.0.0/0"]
#    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "sg-terragrunt-one"
  }
}