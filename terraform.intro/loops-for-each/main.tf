terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.3"
    }
  }
}
resource "null_resource" "example" {
  for_each = var.x


  provisioner "local-exec" {
    command = "echo value of ${each.key} = ${each.value}"
  }
}

variable "x" {
  default = {
    frontend = null
    mongodb = null
    catalogue = null

  }
}