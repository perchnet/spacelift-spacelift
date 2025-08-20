terraform {
  required_providers {
    spacelift = {
      source = "spacelift-io/spacelift"
    }
    onepassword = {
      source  = "1Password/onepassword"
      version = ">=2.1.2"
    }
  }
}
