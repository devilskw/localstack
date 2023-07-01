output "ssm_param_arn" {
  value = aws_ssm_parameter.this.arn
  description = "SSM Parameter Store generated ARN"
}

output "ssm_param_version" {
  value = aws_ssm_parameter.this.version
  description = "SSM Parameter Store generated version"
}