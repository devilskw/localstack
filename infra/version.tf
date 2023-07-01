terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.67"
    }
  }

  required_version = ">= 1.2.0"
}

# examples
# https://dev.to/mrwormhole/localstack-with-terraform-and-docker-for-running-aws-locally-3a6d
# https://guerrilla.blog/2021/07/19/localstack-with-terraform/

# docs
# https://registry.terraform.io/providers/hashicorp/aws/4.67.0/docs