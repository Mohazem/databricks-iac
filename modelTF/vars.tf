variable "databricks_account_username" {
    default = "daniela.boltean@gmail.com"
}
variable "databricks_account_password" {
    default = "Simo=123"
}
variable "databricks_account_id" {
    default = "fd82838f-d4bb-45ac-a14d-9d90d6006bce"
    }

variable "tags" {
  default = {}
}

variable "cidr_block" {
  default = "10.4.0.0/16"
}

variable "region" {
  default = "eu-west-1"
}

// See https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string
resource "random_string" "naming" {
  special = false
  upper   = false
  length  = 6
}

locals {
  prefix = "demo-${random_string.naming.result}"
}