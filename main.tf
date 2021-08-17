provider "aws" {
  region  = "us-east-1"
  version = "~> 3.0"
}

terraform {
  backend "s3" {
    bucket = "diegoaceneves-tfstate"
    key    = "iac.tfstate"
    region = "us-east-1"
  }
}