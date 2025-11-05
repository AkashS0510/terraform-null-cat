terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  # profile = "default"   # uncomment to use named profile
}

provider "local" {}

variable "artifact_content" {
  description = "Content to be written to the artifact file"
  type        = string
  default     = "This is an artifact created by Terraform"
}

resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo '${var.artifact_content}' > artifact.txt"
  }
}

resource "aws_s3_bucket" "logs" {
  bucket = "my-log-bucket-unique-12345" # ensure global uniqueness
  acl    = "private"
}

resource "local_file" "artifact" {
  content  = var.artifact_content
  filename = "${path.module}/artifact.txt"
}

output "artifact_content" {
  value = local_file.artifact.content
}
