# General Variables
variable "aws_region" {
  description = "AWS region"
  default     = "us-west-2"  # Update with your desired region
}

# VPC Variables
variable "vpc_name" {
  description = "VPC name"
  default     = "my-vpc"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  default     = "10.0.0.0/16"
}

variable "vpc_azs" {
  description = "Availability zones"
  default     = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

variable "vpc_public_subnets" {
  description = "Public subnets"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

# Security Group Variables
variable "security_group_name" {
  description = "Security group name"
  default     = "my-security-group"
}

variable "security_group_description" {
  description = "Security group description"
  default     = "Security group for EC2 instance"
}

variable "security_group_ingress_cidr_blocks" {
  description = "Ingress CIDR blocks"
  default     = ["0.0.0.0/0"]
}

variable "security_group_ingress_rules" {
  description = "Ingress rules"
  default = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "SSH access"
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      description = "HTTP access"
    }
  ]
}

variable "security_group_egress_rules" {
  description = "Egress rules"
  default = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "Allow all outbound traffic"
    }
  ]
}

# EC2 Instance Variables
variable "ec2_instance_name" {
  description = "EC2 instance name"
  default     = "my-ec2-instance"
}

variable "ec2_instance_count" {
  description = "Number of EC2 instances"
  default     = 1
}

variable "ec2_instance_ami" {
  description = "EC2 instance AMI ID"
  default     = "ami-12345678"  # Update with desired AMI ID
}

variable "ec2_instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ec2_instance_key_name" {
  description = "EC2 instance key pair name"
  default     = "my-key-pair"   # Update with your key pair name
}

variable "ec2_instance_user_data" {
  description = "EC2 instance user data"
  default     = "#!/bin/bash\necho 'Hello, World!' > /var/www/html/index.html"
}
