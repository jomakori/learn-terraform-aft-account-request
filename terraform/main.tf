module "vendor1" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "joe3rdwash+vendor1@gmail.com"
    AccountName               = "vendor-1"
    ManagedOrganizationalUnit = "Vendor"
    SSOUserEmail              = "joe3rdwash+vendor1@gmail.com"
    SSOUserFirstName          = "Vendor"
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

  account_customizations_name = "vendor-1"
}
