terraform {
  backend "s3" {
    bucket =  "prod-november-terraform-sstanytska.com"
    key    = "terraform-key"
    region = "us-east-1"

  }
}
