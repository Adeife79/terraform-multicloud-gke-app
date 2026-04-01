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
        bucket = "gcp-demo-terraform-bucket"
        key = "gcp/infrastructure.tfstate"
        region = "eu-north-1"
        encrypt = true
    }
}

provider "aws" {
    region = "eu-north-1"
}

provider "google" {
    project = "distributed-map-491814-n3"
    region = var.region
    #credentials = "key.json"
}