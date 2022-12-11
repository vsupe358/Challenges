terraform {
  backend "s3" {
    bucket         = "vaibhav-demo01-terraform-backend"
    encrypt        = true
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "vaibhav-demo01-terraform-backend"
  }
}
