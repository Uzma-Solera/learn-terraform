resource "null_resource" "example" {
  count = length(var.x)

  provisioner "local-exec" {
    command = "echo ${var.x[count.index]}"
  }
}

variable "x" {
  default = [
  1,
  200,
  330
  ]
}