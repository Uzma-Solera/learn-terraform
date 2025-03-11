provider "vault" {
  address = "http://vault-internal.uzma83.shop:8200"
  token   = var.vault_token


}
variable "vault_token" {}

resource "vault_mount" "kvv2-example" {
  path        = "test"
  type        = "kv-v2"
  options = {
    type    = "kv-v2"
  }
  description = "This is an example KV Version 2 secret engine mount"
}

data "vault_generic_secret" "example" {
  path = "test/data/demo"
}
resource "local_file" "example" {
  filename = "/tmp/file.txt"
  content  =data.vault_generic_secret.example.data["username"]
}
