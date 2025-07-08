output "vpc_id" {
  description = "VPC ID"
  value = aws_vpc.this.id
}

output "aws_subnet_private_ids" {
  description = "Private Subnets IDs"
  value = [for subnet in aws_subnet.private : subnet.id if contains(keys(subnet), "id") ]
}
