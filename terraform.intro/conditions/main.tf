
provider "local" {
  # No configuration is required for the local provider
}

resource "local_file" "example" {
  filename = "/tmp/example.txt"
  content  = var.content == null && var.content == " " ? " null content" : var.content
}
 variable "content" {
   default = null
 }
resource "null_resource" "x" {
  count = var.content == null ? 0 : 1
}
variable "x" {
  type = number
}
output "x" {
  value = var.x == 1 ? 100 : var.x == 2 ? 200 : 0
}