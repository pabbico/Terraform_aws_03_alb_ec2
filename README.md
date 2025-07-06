### `README.md`

![terraform_alb_public drawio](https://github.com/user-attachments/assets/fa9c39df-5999-480f-a044-3e302a3cd34d)

```markdown
# Terraform AWS Project: ALB with EC2 Instances

This Terraform project sets up a complete AWS infrastructure with the following components:

- Virtual Private Cloud (VPC)
- Public and Private Subnets
- Internet Gateway (IGW)
- NAT Gateway
- Route Tables
- Security Groups
- Key Pair
- EC2 Instances
- Application Load Balancer (ALB)
- Target Group

---
```
```
## Architecture Overview

\[ VPC ]
├── Public Subnets (ALB, NAT Gateway, EC2)
├── Private Subnets (EC2 - optional)
├── Internet Gateway
├── NAT Gateway
└── Route Tables
```
```

---

## Prerequisites

- AWS account with access keys
- Terraform CLI installed (`>= 1.0`)
- IAM user with sufficient permissions to create resources
- SSH key pair created (or use your existing public key)

---

## Project Structure


.
├── alb.tf
├── ec2.tf
├── igw\.tf
├── key.tf
├── nat\_gateway.tf
├── outputs.tf
├── private\_route\_table.tf
├── private\_subnet.tf
├── provider.tf
├── public\_route\_table.tf
├── public\_subnet.tf
├── region.tf
├── sg.tf
├── target\_group.tf
├── terraform.tfvars
├── variable.tf
├── vpc.tf
├── .gitignore
└── README.md

```
````

---

## Usage

### 1. Clone the repository

```bash
git clone https://github.com/pabbico/Terraform_aws_03_alb_ec2.git
cd Terraform_aws_03_alb_ec2
````

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Plan the infrastructure

```bash
terraform plan
```

### 4. Apply the configuration

```bash
terraform apply
```

---

## Inputs (`terraform.tfvars` example)

```hcl
aws_region    = "us-east-1"
vpc_name      = "my-vpc"
key_name      = "my-key"
public_key    = "ssh-rsa AAAA..."
instance_type = "t2.micro"
```

---

## Cleanup

To destroy the entire infrastructure:

```bash
terraform destroy
```

---

## .gitignore Best Practices

Ensure the following files are ignored:

```
.terraform/
terraform.tfstate
terraform.tfstate.backup
.terraform.lock.hcl
*.tfvars
```

---

## 📌 Notes

* Store sensitive variables like access keys in environment variables or secret managers.
* Don't commit `.tfstate` or `*.tfvars` files.
* Consider using remote backends (S3 + DynamoDB) for team collaboration.

---
