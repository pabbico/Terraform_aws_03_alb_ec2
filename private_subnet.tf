resource "aws_subnet" "private_subnet_1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_1_cidr_block
  availability_zone = var.private_subnet_1_az

  tags = {
    Name = "${var.vpc_name}_private_subnet_1"
  }
}
resource "aws_subnet" "private_subnet_2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_2_cidr_block
  availability_zone = var.private_subnet_2_az

  tags = {
    Name = "${var.vpc_name}_private_subnet_2"
  }
}

resource "aws_subnet" "private_subnet_3" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_3_cidr_block
  availability_zone = var.private_subnet_3_az
  tags = {
    Name = "${var.vpc_name}_private_subnet_3"
  }
}