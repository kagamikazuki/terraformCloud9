terraform {
  required_version = ">= 0.11.13"
  # Need to change bucket and profile variables
  backend "s3" {
    bucket = "cloud9-terraform-state"
    region = "ap-northeast-1"
    profile = "terraform-user"
    key = "terraform.tfstate"
    encrypt = true
  }
}

provider "aws" {
  version = "2.5.0"
  region = "${var.region}"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}
