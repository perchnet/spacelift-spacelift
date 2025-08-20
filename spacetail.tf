
resource "spacelift_space" "spacetail" {
  name            = "spacetail"
  parent_space_id = "root"
}

output "spacetail_space_id" {
  value = spacelift_space.spacetail.id
}


data "onepassword_item" "tailscale_spacelift" {
  vault = local.op_vault
  uuid = "fknt2yfnzstipmozzu6xzu72su"
}
output "tailscale_auth_key" {
  value = data.onepassword_item.tailscale_spacelift.password
  sensitive = true
}
module "spacetail" {
  source = "github.com/caius/terraform-spacelift-tailscale"

  space_id = spacelift_space.spacetail.id
  context_labels = [
    "autoattach:runtime:spacelift-tailscale",
    "terraform:true",
  ]
}