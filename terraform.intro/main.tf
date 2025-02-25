provider "local_file" {}

resource "local_file" "foo" {
  content  = "hello world"
  filename = "tmp/foo.bar"
}