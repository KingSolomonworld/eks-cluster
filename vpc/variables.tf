variable "private_cidr" {
  type    = list(string)
  default = ["10.0.0.0/19", "10.0.32.0/19"]
}

variable "availability_zones" {
  type    = list(string)
  default = ["us-west-2a", "us-west-2b"]
}

variable "public_cidr" {
  type    = list(string)
  default = ["10.0.64.0/19", "10.0.96.0/19"]
}
variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR"
  default     = "10.0.0.0/16"
}

variable "project" {
  type        = string
  description = "Project name"
  default     = "vpc-demo"
}

variable "cluster_name" {
  type        = string
  description = "Kubernetes cluster name"
  default     = "eks-demo1"
}

variable "private_subnets" {
  type        = list(string)
  description = "Private subnet cidr"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnets" {
  type        = list(string)
  description = "Public subnet cidr"
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

}