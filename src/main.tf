module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.8.1"

  name = var.aws_vpc_name
  cidr = var.aws_vpc_cidr

  azs             = var.aws_vpc_azs
  private_subnets = var.aws_vpc_private_subnet
  public_subnets  = var.aws_vpc_public_subnet

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = var.aws_project_tags

}

# module "eks" {
#   source  = "terraform-aws-modules/eks/aws"
#   version = "20.10.0"

#   cluster_name    = var.aws_eks_name
#   cluster_version = var.aws_eks_version

#   enable_cluster_creator_admin_permissions = true

#   ## subnets
#   subnet_ids                     = module.vpc.private_subnets
#   vpc_id                         = module.vpc.vpc_id
#   cluster_endpoint_public_access = true
#   eks_managed_node_groups = {
#     default = {
#       min_size     = 2
#       max_size     = 2
#       desired_size = 2

#       instance_types = var.aws_eks_managed_node_groups_instance_types
#     }
#   }
# }

#Parei em 1:49:09