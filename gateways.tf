resource "aws_eip" "nat-eip" {
  domain = "vpc"
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.this

  tags = {
    Name       = "${var.project}-igw"
    Managed_By = "Terraform"
    Project    = var.project
  }
}

resource "aws_nat_gateway" "nat-gw" {

  allocation_id = aws_eip.nat-eip.id
  subnet_id     = aws_subnet.public[1].id

  tags = {
    Name       = "${var.project}-nat-gw"
    Managed_By = "Terraform"
    Project    = var.project
  }
}