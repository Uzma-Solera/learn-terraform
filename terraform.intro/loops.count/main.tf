terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.3"
    }
  }
}
resource "null_resource" "example" {
  count = length(var.x)

  provisioner "local-exec" {
    command = "echo ${var.x[count.index]}"
  }
}
variable "x" {
  default = [
  1,
  2,
  3
  ]
}