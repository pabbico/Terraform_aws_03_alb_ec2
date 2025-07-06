resource "aws_instance" "ec2_instance_1" {
  ami           = var.ami
  instance_type = var.ec2_instance_1_type
  count         = var.ec2_instance_1_count
  subnet_id     = aws_subnet.public_subnet_1.id
  key_name      = aws_key_pair.deployer.key_name
  user_data     = <<-EOF
    #!/bin/bash
    sudo apt update -y
    sudo apt install -y nginx
    sudo systemctl start nginx
    sudo systemctl enable nginx
    sudo echo "<h1>Welcome to ${var.vpc_name} EC2 Instance 1</h1>" > /var/www/html/index.html
    EOF

  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.allow_ports.id]

  tags = {
    Name = "${var.vpc_name}-ec2-instance-1"
  }

}