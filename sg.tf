resource "aws_security_group" "allow_ports" {
  name        = "allow_ports"
  description = "Allow ports inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "${var.vpc_name}-allow-ports"
  }
}



resource "aws_vpc_security_group_ingress_rule" "allow_ports" {
  for_each = toset(var.allowed_ports)

  security_group_id = aws_security_group.allow_ports.id
  cidr_ipv4         = var.my_ip
  from_port         = each.value
  to_port           = each.value
  ip_protocol       = "tcp"
}

resource "aws_vpc_security_group_ingress_rule" "for_alb_allow_ports" {
  for_each = toset(var.allowed_ports)

  security_group_id            = aws_security_group.allow_ports.id
  referenced_security_group_id = aws_security_group.alb_allow_ports.id
  from_port                    = each.value
  to_port                      = each.value
  ip_protocol                  = "tcp"
}
resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_ports.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "tcp"
  from_port         = 0
  to_port           = 65535

}


resource "aws_security_group" "alb_allow_ports" {
  name        = "alb_allow_ports"
  description = "Allow ports inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "${var.vpc_name}-alb-allow-ports"
  }
}



resource "aws_vpc_security_group_ingress_rule" "alb_allow_ports" {
  for_each = toset(var.allowed_ports)

  security_group_id = aws_security_group.alb_allow_ports.id
  cidr_ipv4         = var.my_ip
  from_port         = each.value
  to_port           = each.value
  ip_protocol       = "tcp"
}



resource "aws_vpc_security_group_egress_rule" "alb_allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.alb_allow_ports.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "tcp"
  from_port         = 0
  to_port           = 65535

}