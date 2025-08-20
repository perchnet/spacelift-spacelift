
resource "spacelift_space" "spacetail" {
  name            = "spacetail"
  parent_space_id = "root"
}

module "spacetail" {
  source = "github.com/caius/terraform-spacelift-tailscale"

  space_id = spacelift_space.this.id
  context_labels = [
    "autoattach:runtime:spacelift-tailscale",
    "terraform:true",
  ]
}