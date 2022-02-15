#Launch EC2 instances under Private and Public subnets
resource "aws_instance" "tf_ec2-public-instance" {
  ami           = "ami-0a8b4cd432b1c3063"
  instance_type = "t2.micro"
  subnet_id = var.pub_subnet
  vpc_security_group_ids = [var.vpc_sec_grp_id]
  availability_zone = "us-east-1a"
  key_name = "sulbi-devops"
  #associate_public_ip_address = true
tags = {
    Name = "public-instance"
  }
}
resource "aws_instance" "tf_ec2-private-instance" {
  ami           = "ami-0a8b4cd432b1c3063"
  instance_type = "t2.micro"
  subnet_id = var.priv_subnet
  vpc_security_group_ids = [var.vpc_sec_grp_id]
  availability_zone = "us-east-1a"
  key_name = "sulbi-devops"
  #associate_public_ip_address = false
tags = {
    Name = "private-instance"
  }
}
