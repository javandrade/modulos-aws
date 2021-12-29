terraform {
  backend "s3" {
    bucket = "tst-terraform-state"
    key    = "eks-demo/terraform.state"
    region = "us-east-1"
  }
}
