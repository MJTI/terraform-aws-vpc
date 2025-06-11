variable "env" {
  description = "environment (prod - dev - stage)"
  type        = string
}

variable "vpc_name" {
  description = "VPC Name"
  type        = string
  default     = "main"
}

variable "project" {
  description = "The name of the project"
  type        = string
  default     = "mprofile"
}

variable "vpc_cidr" {
  description = "CIDR block of the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets_cidr" {
  description = "cidr block for each public subnets"
  type        = list(string)
  default     = ["10.0.10.0/24", "10.0.20.0/24"]
}

variable "private_subnets_cidr" {
  description = "cidr block for each private subnets"
  type        = list(string)
  default     = ["10.0.30.0/24", "10.0.40.0/24"]
}

variable "azs" {
  description = "availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}