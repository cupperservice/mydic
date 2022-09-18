terraform {
  required_version = ">= 1.2"
}

module "common" {
  source  = "../common"
  region  = "ap-northeast-1"
  az1     = "ap-northeast-1a"
  az2     = "ap-northeast-1c"
}
