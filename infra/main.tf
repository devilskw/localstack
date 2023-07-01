# https://github.com/localstack/localstack-terraform-samples/blob/master/demo-deploy/main.tf

module "exemplo_s3" {
  count = var.s3_criar_bucket_exemplo ? 1 : 0
  source = "./s3"
  name = var.s3_exemplo_name
  env = var.env
}

module "ssm_exemplo_s3_id" {
  count = var.s3_criar_bucket_exemplo ? 1 : 0
  source = "./ssm"
  name = "/exemplo/s3/${var.s3_exemplo_name}/id"
  value = module.exemplo_s3[count.index].s3_id
  env = var.env
}

module "ssm_exemplo_s3_arn" {
  count = var.s3_criar_bucket_exemplo ? 1 : 0
  source = "./ssm"
  name = "/exemplo/s3/${var.s3_exemplo_name}/arn"
  value = module.exemplo_s3[count.index].s3_arn
  env = var.env
}
