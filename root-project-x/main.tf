module "my_first_vpc" {
    source = "../vpc-module"
    cidr_block = "10.50.0.0/16"
    vpc_name = "project and demo VPC"

}



module "vpc_subnet" {
    source = "../vpc-subnet-module"
    imported_vpc_id = module.my_first_vpc.vpc_id

}

# module "devgroup1" {
#     source = "../iam-user-module"
#     user_names = ["sam", "aiana", "salkyna"]
    
# }

# module "devgroup2" {
#     source = "../iam-user-module"
#     for_each= toset(["sam", "aiana", "salkyna"])
#     username = each.key
    
# }


# module "vpc_subnet" {
#     source = "../vpc-subnet-module"
#     imported_vpc_id = data.aws_vpc.manual.id
#     cidr = "172.31.100.0/24"
# }

# data "aws_vpc" "manual" {
#   id = "vpc-0aa1bb95073baf5ef"
# }
