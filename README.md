# Configuring Production-Ready EKS Clusters with Terraform and GitHub Actions

## Overview
This project covers:
- **Infrastructure as Code (IaC)**: Use Terraform to define and manage your EKS cluster.
- **CI/CD Automation**: Leverage GitHub Actions to automate deployments.

## How To Use

```
# Configure AWS Creds
aws configure

# Apply Terraform
cd eks
terraform init
terraform validate
terraform plan -var-file=poc.tfvars
terraform apply -var-file=poc.tfvars

# Destroy Terraform
terraform destroy -var-file=poc.tfvars
```
```
# Accessing Bastion
chmod 400 "your-keypair.pem"
ssh -i "your-keypair.pem" ubuntu@ec2-54-166-172-12.compute-1.amazonaws.com

apt update -y ; apt install awscli -y
curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.29.8/2024-09-11/bin/linux/amd64/kubectl
curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.29.8/2024-09-11/bin/linux/amd64/kubectl.sha256
sha256sum -c kubectl.sha256
chmod +x ./kubectl
mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$HOME/bin:$PATH
echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc
echo 'alias k=kubectl' >> ~/.bashrc
source ~/.bashrc

aws configure

aws eks update-kubeconfig --region us-east-1 --name your-eks-cluster
```