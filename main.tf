provider "aws" {
  region  = "us-east-1"
  version = "~> 4.0"
}

provider "cloudflare" {
  api_token = var.cf_token
}

terraform {
  backend "s3" {
    bucket = "diegoaceneves-tfstates"
    key    = "iac.tfstate"
    region = "us-east-1"
  }
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
    }
  }
}