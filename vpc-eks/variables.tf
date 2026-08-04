variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
  default     = "eks-learning-vpc"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "Availability Zones to use"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "environment" {
  description = "Environment tag"
  type        = string
  default     = "learning"
}

variable "enable_nat_gateway" {
  description = "Whether to create a NAT Gateway (costs ~$32/month if true)"
  type        = bool
  default     = false
}
variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "eks-learning-cluster"
}

variable "cluster_version" {
  description = "Kubernetes version for EKS"
  type        = string
  default     = "1.31"
}

