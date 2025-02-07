locals {
  org = "medium"
  env = var.env
}

module "eks" {
  source = "../module"

  env                   = var.env
  cluster-name          = "${local.env}-${var.cluster-name}"
  cidr-block            = var.vpc-cidr-block
  vpc-name              = "${local.env}-${var.vpc-name}"
  igw-name              = "${local.env}-${var.igw-name}"
  pub-subnet-count      = var.pub-subnet-count
  pub-cidr-block        = var.pub-cidr-block
  pub-availability-zone = var.pub-availability-zone
  pub-sub-name          = "${local.env}-${var.pub-sub-name}"
  pri-subnet-count      = var.pri-subnet-count
  pri-cidr-block        = var.pri-cidr-block
  pri-availability-zone = var.pri-availability-zone
  pri-sub-name          = "${local.env}-${var.pri-sub-name}"
  public-rt-name        = "${local.env}-${var.public-rt-name}"
  private-rt-name       = "${local.env}-${var.private-rt-name}"
  eip-name              = "${local.env}-${var.eip-name}"
  ngw-name              = "${local.env}-${var.ngw-name}"
  eks-sg                = var.eks-sg

  is_eks_role_enabled           = true
  is_eks_nodegroup_role_enabled = true
  ami_id                        = var.ami_id
  template_instance_types       = var.template_instance_types
  ondemand_instance_types       = var.ondemand_instance_types
  desired_capacity_on_demand    = var.desired_capacity_on_demand
  min_capacity_on_demand        = var.min_capacity_on_demand
  max_capacity_on_demand        = var.max_capacity_on_demand
  is-eks-cluster-enabled        = var.is-eks-cluster-enabled
  cluster-version               = var.cluster-version
  endpoint-private-access       = var.endpoint-private-access
  endpoint-public-access        = var.endpoint-public-access

  addons = var.addons

  bastion-ami            = var.bastion-ami
  bastion-instance-type  = var.bastion-instance-type
  bastion-key-name       = var.bastion-key-name
}