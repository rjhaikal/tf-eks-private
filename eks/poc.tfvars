env                   = "poc"
aws-region            = "ap-southeast-1"
vpc-cidr-block        = "10.16.0.0/16"
vpc-name              = "rj-vpc"
igw-name              = "rj-igw"
pub-subnet-count      = 3
pub-cidr-block        = ["10.16.0.0/20", "10.16.16.0/20", "10.16.32.0/20"]
pub-availability-zone = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
pub-sub-name          = "rj-subnet-public"
pri-subnet-count      = 3
pri-cidr-block        = ["10.16.128.0/20", "10.16.144.0/20", "10.16.160.0/20"]
pri-availability-zone = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
pri-sub-name          = "rj-subnet-private"
public-rt-name        = "rj-public-route-table"
private-rt-name       = "rj-private-route-table"
eip-name              = "rj-elasticip-ngw"
ngw-name              = "rj-ngw"
eks-sg                = "rj-eks-sg"

# EKS
is-eks-cluster-enabled     = true
cluster-version            = "1.30"
cluster-name               = "rj-eks"
endpoint-private-access    = true
endpoint-public-access     = false
ami_id                     = "ami-077f3a501b243067e"
template_instance_types    = ["t3.medium"]
ebs_volume_size            = 20
desired_capacity_on_demand = "1"
min_capacity_on_demand     = "1"
max_capacity_on_demand     = "5"
addons = [
  {
    name    = "vpc-cni",
    version = "v1.18.1-eksbuild.3"
  },
  {
    name    = "coredns"
    version = "v1.11.14-eksbuild.2"
  },
  {
    name    = "kube-proxy"
    version = "v1.30.0-eksbuild.3"
  },
  {
    name    = "aws-ebs-csi-driver"
    version = "v1.35.0-eksbuild.1"
  },
  {
    name    = "eks-pod-identity-agent"
    version = "v1.3.2-eksbuild.2"
  }
  # Add more addons as needed
]

# Bastion
bastion-ami            = "ami-0198a868663199764" # Replace with your AMI ID
bastion-instance-type  = "t2.micro"
bastion-key-name       = "raja-eks"