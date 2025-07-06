# VPC
output "vpc_id" {
  value = aws_vpc.main.id
}

# Subnets
output "public_subnet_ids" {
  value = [
    aws_subnet.public_subnet_1.id,
    aws_subnet.public_subnet_2.id,
    aws_subnet.public_subnet_3.id
  ]
}

output "private_subnet_ids" {
  value = [
    aws_subnet.private_subnet_1.id,
    aws_subnet.private_subnet_2.id,
    aws_subnet.private_subnet_3.id
  ]
}

# Internet Gateway
output "internet_gateway_id" {
  value = aws_internet_gateway.gw.id
}

# NAT Gateway
output "nat_gateway_id" {
  value = aws_nat_gateway.nat_gw.id
}

# Elastic IP for NAT
output "nat_eip" {
  value = aws_eip.nat_eip.public_ip
}

# Route Tables
output "public_route_table_id" {
  value = aws_route_table.public_route_table.id
}

output "private_route_table_id" {
  value = aws_route_table.private_route_table.id
}

output "ec2_instance_ids" {
  value = aws_instance.ec2_instance_1[*].id

}
output "ec2_instance_public_ips" {
  value = aws_instance.ec2_instance_1[*].public_ip

}
output "alb_url" {
  value = aws_lb.front_end.dns_name

}