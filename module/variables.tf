variable "cluster-name" {}
variable "cidr-block" {}
variable "vpc-name" {}
variable "env" {}
variable "igw-name" {}
variable "pub-subnet-count" {}
variable "pub-cidr-block" {
  type = list(string)
}
variable "pub-availability-zone" {
  type = list(string)
}
variable "pub-sub-name" {}
variable "pri-subnet-count" {}
variable "pri-cidr-block" {
  type = list(string)
}
variable "pri-availability-zone" {
  type = list(string)
}
variable "pri-sub-name" {}
variable "public-rt-name" {}
variable "private-rt-name" {}
variable "eip-name" {}
variable "ngw-name" {}
variable "eks-sg" {}

#IAM
variable "is_eks_role_enabled" {
  type = bool
}
variable "is_eks_nodegroup_role_enabled" {
  type = bool
}

# EKS
variable "is-eks-cluster-enabled" {}
variable "cluster-version" {}
variable "endpoint-private-access" {}
variable "endpoint-public-access" {}
variable "addons" {
  type = list(object({
    name    = string
    version = string
  }))
}
variable "ondemand_instance_types" {}
variable "spot_instance_types" {}
variable "desired_capacity_on_demand" {}
variable "min_capacity_on_demand" {}
variable "max_capacity_on_demand" {}
variable "ondemand_disk_size" {
  description = "Disk size for on-demand EKS node group instances"
  type        = number
  default     = 20
}
variable "desired_capacity_spot" {}
variable "min_capacity_spot" {}
variable "max_capacity_spot" {}

# Bastion
variable "bastion-ami" {
  description = "AMI ID for the bastion host"
  type        = string
}

variable "bastion-instance-type" {
  description = "Instance type for the bastion host"
  type        = string
}

variable "bastion-key-name" {
  description = "Key pair name for SSH access to the bastion host"
  type        = string
}