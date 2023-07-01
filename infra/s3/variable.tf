variable "name" {
  type = string
  description = "Nome do bucket S3"
}

variable "env" {
  type = string
  description = "Environment"
  validation {
    condition = contains(["dev", "hom", "prod"], var.env)
    error_message = "Valores válidos para variável 'env' são: 'dev', 'hom' ou 'prod'." #dica: ponto final ao final da frase é obrigatório na error_message
  }
}