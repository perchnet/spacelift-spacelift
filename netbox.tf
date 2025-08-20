resource "spacelift_stack" "netbox" {
  name     = "netbox"
  space_id = spacelift_space.spacetail.id

  repository = "spacelift-netbox"
  branch     = "main"

  terraform_version               = "1.10.5"
  terraform_workflow_tool         = "OPEN_TOFU"
  terraform_external_state_access = true
  terraform_smart_sanitization    = true

  labels                           = ["autoattach:runtime:spacelift-tailscale"]
  enable_well_known_secret_masking = true
  github_action_deploy             = true
  autodeploy                       = true

  runner_image = local.runner_image
}