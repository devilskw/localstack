resource "aws_ssm_parameter" "this" {
  name  = var.name
  type  = "String" # pro exemplo vamos só considerar o tipo String
  value = var.value
  overwrite = var.overwrite
  tags = {
    Environment = var.env
  }
}