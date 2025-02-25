provider "local" {}

resource "local_file" "foo" {
  content  = "hello world"
  filename = "tmp/foo.bar"
}


variable "x" {
  default = 10
}



output "x" {
  value = var.x
}

output "x1" {
  value = "value of x - ${var.x}"
}

variable "y" {
  default = [ 1,"abc", 3, false]
}
output "y1" {
  value = var.y[0]
}
variable "z" {
  default = {
    name = "uzma"
    age = 18
  }
}
output "name" {
  value = "name - ${var.z["name"]}, age - ${var.z.age}"
}
variable"input" {}
output "input" {
  value = var.input
}
variable "trainer" {}
output "trainer" {
  value = var.trainer
}