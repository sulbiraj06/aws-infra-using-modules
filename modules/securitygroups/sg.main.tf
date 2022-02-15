/* Create a security group to allow port 22,80,443 */
resource "aws_security_group" "tf_sg_vpc" {
  name        = "allow_SSH_traffic"
  description = "Allow web inbound traffic"
  vpc_id      = var.security_group_vpc_id

    ingress {
    description      = "ssh"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_SSH_traffic"
  }
}