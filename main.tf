provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-rk01"
    key    = "ami/shipping/terraform.tfstate"
    region = "us-east-1"
  }
}

module "ami" {
  source = "https://github.com/devopsravi9/module-immutable-app-ami.git"
  COMPONENT = "shipping"
  APP_VERSION = var.APP_VERSION
}

variable "APP_VERSION" {}