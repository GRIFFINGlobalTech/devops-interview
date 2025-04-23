data "aws_region" "current" {}

#todo initialize aws provider
provider "aws" {
  region  = "us-east-1"
}

# Fetch variables based on Environment
module "vars_prod" {
  source      = "./vars"
  environment = "prod"
}
