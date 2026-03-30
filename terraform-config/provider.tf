terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.0"
        }
        google = {
            source = "hashicorp/google"
            version = "~> 4.0"
        }
    }

    backend "s3" {
        bucket = "gcp-demo-terraform-state-bucket"
        key = "gcp/infrastructure.tfstate"
        region = "us-east-1"
    }
}

provider "aws" {
    region = "us-east-1"
}

provider "google" {
    project = var.project_id
    region = var.region
  #  credentials = "key.json"
}