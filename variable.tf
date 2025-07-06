variable "vpc_name" {
  description = "Enter the Name of the VPC"
  type        = string
  default     = "CustomVPC"
}
variable "vpc_cidr_block" {
  description = "Enter the CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"

}
variable "public_subnet_1_cidr_block" {
  description = "Enter the CIDR block for the first public subnet"
  type        = string
  default     = "10.0.0.0/24"

}
variable "public_subnet_2_cidr_block" {
  description = "Enter the CIDR block for the second public subnet"
  type        = string
  default     = "10.0.1.0/24"
}
variable "region" {
  description = "Enter the AWS region where the VPC will be created"
  type        = string
  default     = "us-west-2"
}
variable "private_subnet_1_cidr_block" {
  description = "Enter the CIDR block for the first private subnet"
  type        = string
  default     = "10.0.2.0/24"
}
variable "private_subnet_2_cidr_block" {
  description = "Enter the CIDR block for the second private subnet"
  type        = string
  default     = "10.0.3.0/24"
}
variable "profile" {
  description = "Enter the AWS profile to use for authentication"
  type        = string
  default     = "default"
}
variable "private_subnet_3_cidr_block" {
  description = "Enter the CIDR block for the third private subnet"
  type        = string
  default     = "10.0.5.0/24"

}
variable "public_subnet_3_cidr_block" {
  description = "Enter the CIDR block for the third public subnet"
  type        = string
  default     = "10.0.4.0/24"

}
variable "public_subnet_1_az" {
  description = "Enter the availability zone for the first public subnet"
  type        = string
  default     = "us-west-2a"

}
variable "public_subnet_2_az" {
  description = "Enter the availability zone for the second public subnet"
  type        = string
  default     = "us-west-2b"

}
variable "public_subnet_3_az" {
  description = "Enter the availability zone for the third public subnet"
  type        = string
  default     = "us-west-2c"
}
variable "private_subnet_1_az" {
  description = "Enter the availability zone for the first private subnet"
  type        = string
  default     = "us-west-2a"
}
variable "private_subnet_2_az" {
  description = "Enter the availability zone for the second private subnet"
  type        = string
  default     = "us-west-2b"
}
variable "private_subnet_3_az" {
  description = "Enter the availability zone for the third private subnet"
  type        = string
  default     = "us-west-2c"
}

variable "ec2_instance_1_type" {
  description = "Enter the instance type for the first EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "allowed_ports" {
  type    = list(string)
  default = ["22", "80", "443"] # List of allowed ports for security group rules
}


variable "ami" {
  description = "Enter the AMI ID for the EC2 instance"
  type        = string
  default     = "ami-05f991c49d264708f" # Replace with a valid AMI ID for your region

}
variable "ec2_instance_1_count" {
  description = "Enter the number of instances for the first EC2 instance"
  type        = number
  default     = 1

}
variable "key_name" {
  description = "Enter the name of the key pair for SSH access to the EC2 instance"
  type        = string
  default     = "deployer-key"

}
variable "public_key" {
  description = "Enter the public key for the key pair"
  type        = string
  default     = "ssh-ed25519 AAAACjgksj2dAWD0OcbFvwZmkFzAHHivcc"

}


variable "my_ip" {
  description = "Enter your IP address in CIDR notation (e.g.,10.0.0.0/32)"
  type        = string
  default     = "10.0.0.0/32" # Replace with your actual IP address in CIDR notation

}