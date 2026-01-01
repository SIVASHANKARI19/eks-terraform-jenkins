module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  cluster_name    = "jenkins-eks"
  cluster_version = "1.29"

  vpc_id     = "vpc-xxxx"
  subnet_ids = ["subnet-aaa", "subnet-bbb"]

  eks_managed_node_groups = {
    ng = {
      min_size     = 1
      max_size     = 2
      desired_size = 1
      instance_types = ["t3.medium"]
    }
  }
}
