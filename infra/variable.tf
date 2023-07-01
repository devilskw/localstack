variable "env" {
  type = string
  description = "Environment"
  validation {
    condition = contains(["dev", "hom", "prod"], var.env)
    error_message = "Valores válidos para variável 'env' são: 'dev', 'hom' ou 'prod'." #dica: ponto final ao final da frase é obrigatório na error_message
  }
  default = "dev"
}

variable "s3_exemplo_name" {
  type = string
  description = "Lista dos nomes do buckets s3 com exemplo de lista"
  default = "bucket-one"
}

variable "s3_criar_bucket_exemplo" {
  type = bool
  default = true
}
