terraform {
  backend "s3" {
    bucket =  "qa-november-terraform-sstanytska.com"
    key    = "terraform-key"
    region = "us-east-1"

  }
}
