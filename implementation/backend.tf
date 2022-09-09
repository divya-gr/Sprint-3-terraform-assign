terraform {
  backend "s3" {
    bucket = "divya-second"
    key    = "first/hit.tfstate"
    region = "us-east-1"
    # dynamodb_table = "first-table1"
  }
}