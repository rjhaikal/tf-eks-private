env                   = "poc"
aws-region            = "us-east-1"
vpc-cidr-block        = "10.16.0.0/16"
vpc-name              = "rj-vpc"
igw-name              = "rj-igw"
pub-subnet-count      = 3
pub-cidr-block        = ["10.16.0.0/20", "10.16.16.0/20", "10.16.32.0/20"]
pub-availability-zone = ["us-east-1a", "us-east-1b", "us-east-1c"]
pub-sub-name          = "rj-subnet-public"
pri-subnet-count      = 3
pri-cidr-block        = ["10.16.128.0/20", "10.16.144.0/20", "10.16.160.0/20"]
pri-availability-zone = ["us-east-1a", "us-east-1b", "us-east-1c"]
pri-sub-name          = "rj-subnet-private"
public-rt-name        = "rj-public-route-table"
private-rt-name       = "rj-private-route-table"
eip-name              = "rj-elasticip-ngw"
ngw-name              = "rj-ngw"
eks-sg                = "rj-eks-sg"

# EKS
is-eks-cluster-enabled     = true
cluster-version            = "1.30"
cluster-name               = "rj-eks-tes"
endpoint-private-access    = true
endpoint-public-access     = false
ondemand_instance_types    = ["t3.medium"]
ondemand_disk_size         = 20 # Set the desired disk size in GiB
# spot_instance_types        = ["c5a.large", "c5a.xlarge", "m5a.large", "m5a.xlarge", "c5.large", "m5.large", "t3a.large", "t3a.xlarge", "t3a.medium"]
desired_capacity_on_demand = "1"
min_capacity_on_demand     = "1"
max_capacity_on_demand     = "5"
# desired_capacity_spot      = "0"
# min_capacity_spot          = "0"
# max_capacity_spot          = "1"
addons = [
  {
    name    = "vpc-cni",
    version = "v1.18.1-eksbuild.3"
  },
  {
    name    = "coredns"
    version = "v1.11.1-eksbuild.8"
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
bastion-ami            = "ami-06b21ccaeff8cd686" # Replace with your AMI ID
bastion-instance-type  = "t2.micro"
bastion-key-name       = "raja-eks"