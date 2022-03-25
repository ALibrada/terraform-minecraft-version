terraform {
  required_version = ">= 0.13.1"

  required_providers {
    aws = {
      source  = "hashicorp/http"
      version = ">= 2.1.0"
    }
  }
}
