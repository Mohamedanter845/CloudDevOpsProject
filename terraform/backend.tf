terraform {
  backend "s3" {
    bucket         = "my-terraform-project-state-bucket-mohamedanter-20250729"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}


