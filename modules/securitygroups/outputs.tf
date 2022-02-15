output "sg_id" {
    value = aws_security_group.tf_sg_vpc.id
    description = "security group id"
}