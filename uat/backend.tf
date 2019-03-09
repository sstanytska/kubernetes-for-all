terraform {
  backend "s3" {
    bucket =  "uat-november-terraform-sstanytska.com"
    key    = "terraform-key"
    region = "us-east-1"

  }
}
