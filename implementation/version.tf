terraform {
  required_version = ">= 0.13.1"

  required_providers {
    # Update these to reflect the actual requirements of your module
    aws = {
      source  = "hashicorp/random"
      version = ">= 2.7.0"
    }
  }
}