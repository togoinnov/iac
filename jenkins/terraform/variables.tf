// Provided at runtime

variable "region" {
  type        = string
  description = "AWS region"
  default     = "eu-central-1"
}

variable "author" {
  type        = string
  description = "Created by"
  default     = "Bernard Adanlessossi"
}

variable "aws_profile" {
  type        = string
  description = "AWS profile to use"
  default     = "default"
}

variable "availability_zones" {
  type        = list(any)
  description = "List of Availability Zones"
  default     = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
}

variable "public_key" {
  type        = string
  description = "SSH public key path"
  default     = "/home/bernard/.ssh/id_rsa"
}

variable "hosted_zone_id" {
  type        = string
  description = "Route53 hosted zone id"
  default     = "Z07219722VMKDHAV5PCTD"
}

variable "domain_name" {
  type        = string
  description = "Domain name"
  default     = "togoinov.com"
}

variable "ssl_arn" {
  type        = string
  description = "ACM SSL ARN"
  default     = "arn:aws:acm:eu-central-1:780462955238:certificate/e735da73-ab0d-409c-8730-bfee8d6097c6"
}

variable "jenkins_username" {
  type        = string
  description = "Jenkins admin user"
  default     = "admin-inov"
}

variable "jenkins_password" {
  type        = string
  description = "Jenkins admin password"
  default     = "Inn0vati0n"
}

variable "jenkins_credentials_id" {
  type        = string
  description = "Jenkins workers SSH based credentials id"
}

// Default values

variable "vpc_name" {
  type        = string
  description = "VPC name"
  default     = "togoinov-vpc"
}

variable "cidr_block" {
  type        = string
  description = "VPC CIDR block"
  default     = "10.0.0.0/16"
}

variable "public_subnets_count" {
  type        = number
  description = "Number of public subnets"
  default     = 3
}

variable "private_subnets_count" {
  type        = number
  description = "Number of private subnets"
  default     = 3
}

variable "bastion_instance_type" {
  type        = string
  description = "Bastion instance type"
  default     = "t2.micro"
}

variable "jenkins_master_instance_type" {
  type        = string
  description = "Jenkins master EC2 instance type"
  default     = "t2.medium"
}

variable "jenkins_worker_instance_type" {
  type        = string
  description = "Jenkins worker EC2 instance type"
  default     = "t2.micro"
}

variable "jenkins_iam_instance_profile" {
  type        = string
  description = "Jenkins IAM Instance Profile"
  default     = "packer-ec2-role"
}
