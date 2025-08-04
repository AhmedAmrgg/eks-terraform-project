
module EKS {
  source = "../../modules/EKS"
 
  environment = var.environment
  cluster_name = var.cluster_name
  aws_region = var.aws_region
  subnet_ids   = module.Network.public_subnets  # ✅ الحل هنا

  
}
 


module Network {
  source = "../../modules/Network"


  azs = var.azs
  vpc_cidr_block = var.vpc_cidr_block
  vpc_azs   = module.Network.azs
  subnet_ids = module.Network.public_subnets

  
}
