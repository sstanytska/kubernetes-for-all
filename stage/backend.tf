terraform {
  backend "s3" {
    bucket =  "stage-november-terraform-sstanytska.com"
    key    = "terraform-key"
    region = "us-east-1"

  }
}
