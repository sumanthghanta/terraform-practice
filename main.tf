terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "sumanth-tf-state-996392"
    key            = "terraform-learning/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}

module "my_bucket" {
  source      = "./modules/s3-bucket"
  bucket_name = var.bucket_name
  environment = var.environment
}
