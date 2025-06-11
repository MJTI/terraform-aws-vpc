resource "aws_subnet" "public" {
  count = length(var.public_subnets_cidr)


  vpc_id                  = aws_vpc.this.id
  cidr_block              = var.public_subnets_cidr[count.index]
  availability_zone       = var.azs[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name                     = "Public"
    Managed_By               = "Terraform"
    Project                  = var.project
    "kubernetes.io/role/elb" = "1"
  }
}

resource "aws_subnet" "private" {
  count = length(var.private_subnets_cidr)


  vpc_id                  = aws_vpc.this.id
  cidr_block              = var.private_subnets_cidr[count.index]
  availability_zone       = var.azs[count.index]
  map_public_ip_on_launch = false

  tags = {
    Name                              = "Private"
    Managed_By                        = "Terraform"
    Project                           = var.project
    "kubernetes.io/role/internal-elb" = "1"
  }
}