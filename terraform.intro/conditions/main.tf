
resource "local_file" "example" {
  content = var.content == null ? "null content" : var.content
  filename = "/tmp/a.txt"
}
variable "content" {
  default = null
}

resource "null_resource" "example" {
  count = var.content == null ? 0 : 1
}

