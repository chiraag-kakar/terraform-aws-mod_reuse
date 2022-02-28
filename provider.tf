provider "aws" {
  region     = "ap-southeast-1"
  access_key = "AKIAXB3KY4F5GKGX3EXP"
  secret_key = "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"

  assume_role {
    role_arn    = "arn:aws:iam::497863501987:role/terraform"
    external_id = "devhv"
  }
}