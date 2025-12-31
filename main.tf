module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "demo-eks"
  cluster_version = "1.29"
  subnet_ids      = ["subnet-0aa6bcf4ed235a1b6", "subnet-0da8056e91489b889"]
  vpc_id          = "vpc-0b1fd11384cd9ffb4"

  eks_managed_node_groups = {
    default = {
      min_size     = 1
      max_size     = 2
      desired_size = 1
      instance_types = ["t3.medium"]
    }
  }
}
