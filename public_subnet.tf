resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_1_cidr_block
  availability_zone       = var.public_subnet_1_az
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.vpc_name}_public_subnet_1"
  }
}
resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_2_cidr_block
  availability_zone       = var.public_subnet_2_az
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.vpc_name}_public_subnet_2"
  }
}
resource "aws_subnet" "public_subnet_3" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_3_cidr_block
  availability_zone       = var.public_subnet_3_az
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.vpc_name}_public_subnet_3"
  }
}
