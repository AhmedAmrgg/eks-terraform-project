
module EKS {
  source = "../../modules/EKS"
 
  env = var.environment
  name = var.cluster_name
  region = var.aws_region
  Subnets = var.vpc_public_subnets
  
}

module Network {
  source = "../../modules/Network"

  cidr = var.vpc_cidr_block
  azs = module.vpc.azs 

  
}
