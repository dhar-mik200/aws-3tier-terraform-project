output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "web_sg_id" {
  value = module.security_group.web_sg_id
}

output "ec2_instance_id" {
  value = module.ec2.instance_id
}

output "ec2_public_ip" {
  value = module.ec2.public_ip
}

output "db_sg_id" {
  value = module.security_group.db_sg_id
}

output "db_endpoint" {
  value = module.rds.db_endpoint
}

output "sns_topic_arn" {
  value = module.monitoring.sns_topic_arn
}

output "cloudwatch_alarm_name" {
  value = module.monitoring.cloudwatch_alarm_name
}