resource "local_file" "example" {
  content = var.content == null ? "null content" : var.content
  filename = "/tmp/a.txt"
}
variable "content" {
  default = null
}