variable "vpc_cidr" {
    description =   "cidr_block of the main VPC"
    default   =   "10.0.0.0/16"
}
variable "tenancy" {
    description =   "tenancy of the main VPC"
    default = "default"
}
variable "cidr_pub_sub" { 
  default="10.0.3.0/24"
}
variable "cidr_priv_sub"    {
  default = "10.0.4.0/24"
}
variable "subnet_az" {
  default = "us-east-1a"
}
variable "map_pub_ip_for_pub_instances" {
  default   =   true
}
variable "map_pub_ip_for_priv_instances" {
  default = false
}