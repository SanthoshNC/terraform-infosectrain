terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  backend "s3" {
    bucket = "terraform-infosectrain-remote-backend"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-2"
}
