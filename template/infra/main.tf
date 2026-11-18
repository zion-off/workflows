terraform {
  required_version = ">= 1.10"

  backend "s3" {}

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5.29"
    }
    # vercel = {
    #   source  = "vercel/vercel"
    #   version = "~> 5.27"
    # }
    # aws = {
    #   source  = "hashicorp/aws"
    #   version = "~> 6.0"
    # }
  }
}

provider "cloudflare" {}

variable "cloudflare_account_id" {
  type = string
}

# resource "cloudflare_workers_script" "app" {
#   account_id         = var.cloudflare_account_id
#   script_name        = "my-app"
#   main_module        = "index.js"
#   content_file       = "${path.module}/../dist/index.js"
#   content_sha256     = filesha256("${path.module}/../dist/index.js")
#   compatibility_date = "2026-11-01"
# }

# provider "vercel" {
#   team = var.vercel_team
# }
#
# variable "vercel_team" {
#   type    = string
#   default = null
# }
#
# resource "vercel_project" "app" {
#   name = "my-app"
# }
#
# data "vercel_project_directory" "app" {
#   path = "${path.module}/.."
# }
#
# resource "vercel_deployment" "app" {
#   project_id  = vercel_project.app.id
#   files       = data.vercel_project_directory.app.files
#   path_prefix = data.vercel_project_directory.app.path
#   production  = true
# }

# provider "aws" {
#   region = "ap-southeast-2"
# }
