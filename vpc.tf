resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr

  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name       = "${var.project}-${var.vpc_name}"
    Managed_By = "Terraform"
    Project    = var.project
  }
}