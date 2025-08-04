
module EKS {
  source = "../../modules/EKS"
 
  environment = var.environment
  cluster_name = var.cluster_name
  aws_region = var.aws_region
  vpc_public_subnets = var.vpc_public_subnets
  
}

module Network {
  source = "../../modules/Network"

  vpc_cidr_block = var.vpc_cidr_block
  vpc_azs  = module.vpc.azs 

  
}
