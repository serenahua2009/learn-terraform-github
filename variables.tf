variable "AWS_ACCESS_KEY" {
  type        = string
  description = "AWS ACCESS KEY"
  default     = "AKIAZPC2N6VBMCNBEK57"
}

variable "AWS_SECRET_KEY" {
  type        = string
  description = "AWS SECRET KEY"
  default     = "1fqq4lH91IocKUHa8Ul88LesSBgkahNYdhbJY2IZ"
}

variable "token" {
  type        = string
  description = "github token to connect github repo"
  default     = "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"
}

variable "repository" {
  type        = string
  description = "github repo url"
  default     = "https://github.com/serenahua2009/amplify-example"
}

variable "app_name" {
  type        = string
  description = "AWS Amplify App Name Modified"
  default     = "my-amplify-modified"
}

variable "branch_name" {
  type        = string
  description = "AWS Amplify App Repo Branch Name"
  default     = "main"
}


variable "domain_name" {
  type        = string
  default     = "amplifyapp.com"
  description = "AWS Amplify Domain Name Modified"
}
