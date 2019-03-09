terraform {
  backend "s3" {
    bucket =  "dev-november-terraform-sstanytska.com"
    key    = "terraform-key"
    region = "us-east-1"

  }
}
