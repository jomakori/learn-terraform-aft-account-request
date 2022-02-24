module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jomakori+sandbox@gmail.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "AFT-sandbox"
    SSOUserEmail              = "jomakori+sandbox@gmail.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "setup" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp"
    change_reason       = "AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
