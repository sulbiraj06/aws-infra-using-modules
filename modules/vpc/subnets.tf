#Create Public Subnet
/* Public subnet */
resource "aws_subnet" "tf_public_subnet" {
  vpc_id                  = aws_vpc.tf_vpc.id
  cidr_block              = var.cidr_pub_sub
  availability_zone       = var.subnet_az
  map_public_ip_on_launch = true
  tags = {
    Name        = "public-subnet"
    }
}
#Create Private Subnet
/* Private subnet */
resource "aws_subnet" "tf_private_subnet" {
  vpc_id                  = aws_vpc.tf_vpc.id
  cidr_block              = var.cidr_priv_sub
  availability_zone       = var.subnet_az
  map_public_ip_on_launch = false
  tags = {
    Name        = "private-subnet"
  }
}