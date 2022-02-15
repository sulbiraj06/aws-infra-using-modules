output "id_of_vpc" {
    value = aws_vpc.tf_vpc.id
}
output "id_of_pub_subnet" {
    value = aws_subnet.tf_public_subnet.id
}
output "id_of_priv_subnet" {
    value = aws_subnet.tf_private_subnet.id
}