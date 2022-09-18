terraform {
  backend "s3" {
    bucket    = "circleci-mydic"
    region    = "ap-northeast-1"
    profile   = "mydic"
    key       = "terraform.tfstate"
    encrypt   = true
  }
}

module "common" {
  source = "../common"
  region = "ap-northeast-1"
  az1    = "ap-northeast-1a"
  az2    = "ap-northeast-1c"
}
