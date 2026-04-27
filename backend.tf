terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "tfstateday28"
    container_name       = "tfstate"
    key                  = "dev.gitops.tfstate"
    use_azuread_auth     = false
    use_msi              = true
  }
}
