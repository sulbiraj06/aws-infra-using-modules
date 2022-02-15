#Create Elastic IP
/* Elastic IP for NAT */
resource "aws_eip" "tf_nat_eip" {
  vpc        = true
  depends_on = [aws_internet_gateway.tf_igw]
}
#Create NAT Gateway
/* NAT */
resource "aws_nat_gateway" "tf_nat" {
  allocation_id = aws_eip.tf_nat_eip.id
  subnet_id     = aws_subnet.tf_public_subnet.id
  depends_on    = [aws_internet_gateway.tf_igw]
  tags = {
    Name        = "nat-gateway"
  }
}
