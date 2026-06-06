variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "my_ip" {
  description = "Your public IP address for SSH access"
  type        = string
}

variable "ami_id" {
  description = "Ubuntu AMI ID"
  type        = string
}

variable "key_name" {
  description = "AWS key pair name"
  type        = string
}

variable "db_name" {
  type = string
}

variable "db_username" {
  type = string
}

variable "db_password" {
  type      = string
  sensitive = true
}

variable "alert_email" {
  description = "Email address for CloudWatch alerts"
  type        = string
}