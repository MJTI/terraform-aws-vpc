output "vpc_id" {
  description = "VPC ID"
  value = aws_vpc.this.id
}

output "aws_subnet_private_ids" {
  description = "Private Subnets"
  value = aws_subnet.private[*].id
}
