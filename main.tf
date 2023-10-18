# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
  required_version = ">= 1.1.0"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_amplify_app" "amplify_app" {
  name        = var.app_name
  repository  = var.repository
  oauth_token = var.token
}

resource "aws_amplify_branch" "master_branch" {
  app_id      = aws_amplify_app.amplify_app.id
  branch_name = var.branch_name
}

resource "aws_amplify_domain_association" "domain_association" {
  app_id                = aws_amplify_app.amplify_app.id
  domain_name           = var.domain_name
  wait_for_verification = false

  sub_domain {
    branch_name = aws_amplify_branch.master_branch.branch_name
    prefix      = var.branch_name
  }
}

output "amplify_app_id" {
  value = aws_amplify_app.amplify_app.id
}

output "amplify_app_url" {
  value = aws_amplify_domain_association.domain_association.domain_name
}

