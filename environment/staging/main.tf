terraform {
}

module "common" {
  source  = "../common"
  region  = "ap-northeast-1"
  az1     = "ap-northeast-1a"
  az2     = "ap-northeast-1c"
}
