provider "onepassword" {}

data "onepassword_item" "op_spacelift" {
  vault = local.op_vault
  title = "1password-spacelift"
}

locals {
  op_vault = data.onepassword_vault.op_vault.uuid
}

data "onepassword_vault" "op_vault" {
  name = "perchnet"
}
