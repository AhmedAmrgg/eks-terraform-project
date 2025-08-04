
module EKS {
  source = "../../modules/EKS"
 
  environment = var.environment
  cluster_name = var.cluster_name
  aws_region = var.aws_region
  subnet_ids   = module.Network.public_subnets  # ✅ الحل هنا
  private_subnets = module.Network.private_subnets
  public_subnets  = module.Network.public_subnets
  
}
 


module Network {
  source = "../../modules/Network"


  # azs = var.azs
  vpc_cidr_block = var.vpc_cidr_block
  azs   = module.Network.availability_zones
  subnet_ids = module.Network.public_subnets
# vpc
  
}
