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

resource "null_resource" "example" {
  count = var.content == null && var.content == "" ? 0 : 1
}

variable "x" {
  type = number
}
 output "x" {
   value = var.x == 1 ? 100 : var.x == 2 ? 200 : 0
 }