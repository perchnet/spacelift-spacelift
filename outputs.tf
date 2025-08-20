output "op_credential" {
  value = data.onepassword_item.op_spacelift.credential
  sensitive = true
}
