module "vpc-module" {
    source = "../modules/vpc"
    vpc_cidr    =   "192.16.0.0/16"
    tenancy = "default"
    cidr_pub_sub    =   "192.16.0.0/24"
    cidr_priv_sub   =   "192.16.1.0/24"
    subnet_az   =   "us-east-1a"
}

module "sec-grp-module" {
    source = "../modules/securitygroups"
    security_group_vpc_id = module.vpc-module.id_of_vpc
}
        
module "ec2-module" {
  source = "../modules/ec2"
  vpc_sec_grp_id  = module.sec-grp-module.sg_id
  pub_subnet  = module.vpc-module.id_of_pub_subnet
  priv_subnet = module.vpc-module.id_of_priv_subnet
}
