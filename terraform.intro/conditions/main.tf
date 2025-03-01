terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.3"
    }
  }
}
resource "local_file" "example" {
  content = var.content == null ? "null content" : var.content
  filename = "/tmp/a.txt"
}


resource "null_resource" "example" {
  count = var.content == null ? 0 : 1
}

resource "null_resource" "example" {
  count = var.content == null && var.content == "" ? 0 : 1
}

