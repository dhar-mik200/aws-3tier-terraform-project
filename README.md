# AWS 3-Tier Infrastructure using Terraform

## Project Overview

This project demonstrates the design and deployment of a production-style AWS 3-tier architecture using Terraform Infrastructure as Code (IaC).

The infrastructure includes a custom VPC, public and private subnets, Internet Gateway, Security Groups, EC2 web server, Amazon RDS MySQL database, CloudWatch monitoring, and SNS alerting.

## Architecture

Users
↓
Internet Gateway
↓
Public Subnet
↓
EC2 (Ubuntu + Nginx)
↓
Private Subnet
↓
Amazon RDS MySQL

Monitoring Layer:
CloudWatch → SNS → Email Alerts

## Technologies Used

* AWS
* Terraform
* EC2
* VPC
* RDS MySQL
* CloudWatch
* SNS
* Linux (Ubuntu)
* Nginx
* Git & GitHub

## Features

* Custom VPC Deployment
* Public and Private Subnets
* Internet Gateway Configuration
* Route Table Management
* Security Group Configuration
* EC2 Web Server Deployment
* Nginx Installation
* Amazon RDS MySQL Deployment
* CloudWatch Monitoring
* SNS Alerting
* Infrastructure as Code using Terraform Modules

## Project Structure

aws-3tier-terraform-project/

├── provider.tf

├── variables.tf

├── outputs.tf

├── terraform.tfvars

├── main.tf

└── modules/

├── vpc/

├── security-group/

├── ec2/

├── rds/

└── monitoring/

## Infrastructure Components

### Networking

* Custom VPC
* Public Subnets
* Private Subnets
* Internet Gateway
* Route Tables

### Compute

* EC2 Ubuntu Server
* Nginx Web Server

### Database

* Amazon RDS MySQL
* Private Subnet Deployment

### Monitoring

* CloudWatch Alarm
* SNS Notifications

## Terraform Commands

Initialize Terraform:

terraform init

Validate Configuration:

terraform validate

Preview Changes:

terraform plan

Apply Infrastructure:

terraform apply

Destroy Infrastructure:

terraform destroy

## Security Best Practices

* RDS deployed in private subnets
* Security Groups configured with least privilege
* SSH access restricted using CIDR ranges
* Infrastructure managed using Terraform

## Learning Outcomes

* AWS Networking Fundamentals
* Infrastructure as Code (IaC)
* Terraform Modules
* Cloud Security Concepts
* EC2 Deployment
* RDS Database Management
* Monitoring & Alerting
* AWS Architecture Design

## Author

Dharmik Patel

GitHub: https://github.com/dhar-mik200
