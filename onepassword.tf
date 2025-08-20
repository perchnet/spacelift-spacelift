#provider "onepassword" {}
#
#data "onepassword_item" "proxmox_api" {
#  vault = local.op_vault_uuid
#  title = "proxmox-api"
#}
#
#locals {
#  op_vault_uuid = data.onepassword_vault.op_vault.uuid
#}
#
#data "onepassword_vault" "op_vault" {
#  name = "perchnet"
#}
#