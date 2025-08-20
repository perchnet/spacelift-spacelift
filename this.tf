resource "spacelift_stack" "spacelift-spacelift" {
  name = "spacelift-spacelift"
  space_id = "root"

  repository = "spacelift-spacelift"
  branch = "main"

  terraform_version = "1.10.5"
  terraform_workflow_tool = "OPEN_TOFU"
  terraform_external_state_access = true
  terraform_smart_sanitization = true

  description = "spacelift stack to manage spacelift"
  autodeploy = true
  administrative = true
  enable_well_known_secret_masking = true
  github_action_deploy = false
  runner_image = "ghcr.io/perchnet/spacelift-runner-tailscale:6241a81a5eb6e18c14658aff857539a7eaa5217f"
}