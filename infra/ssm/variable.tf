# variable "parameters" {
#   type = list(map(object({
#     name = string
#     description = string
#     type = string
#     value = string
#     overwrite = bool
#   })))
# }

variable "name" {
  type = string
  description = "SSPM Parameter Store name"
}

variable "value" {
  type = string
  description = "SSPM Parameter Store String value"
}

variable "overwrite" {
  type = bool
  description = "Permits overwriting SSM Parameter Store value. Default value is true"
  default = true
}

variable "env" {
  type = string
  description = "Environment"
  validation {
    condition = contains(["dev", "hom", "prod"], var.env)
    error_message = "Valores válidos para variável 'env' são: 'dev', 'hom' ou 'prod'." #dica: ponto final ao final da frase é obrigatório na error_message
  }
}