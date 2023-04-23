terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.57.0"
    }
    archive = {
      source = "hashicorp/archive"
      version = "2.3.0"
    }
  }
}

provider "aws" {
  access_key = "test"
  secret_key = "test"
  region     = "us-east-1"

  s3_use_path_style           = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    # use endpoint of localstack
    ec2           = "http://localhost:4566"
    ecs           = "http://localhost:4566"
    iam           = "http://localhost:4566"
    s3            = "http://localhost:4566"
    s3api         = "http://localhost:4566"
    glacier       = "http://localhost:4566"
    sns           = "http://localhost:4566"
    organizations = "http://localhost:4566"
  }
}
