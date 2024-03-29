
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.46.0"
    }
  }
 backend "azurerm" {
 # Update this block with the location of your terraform state file
    resource_group_name  = "anjigithubdeploy"
    storage_account_name = "teststoreanji01"
    container_name       = "newcontainer1"
    key                  = "prod.terraform.newcontainer1"
    #use_oidc              = true
    subscription_id      = "eee0e1cf-7743-4ef2-ab64-bdc7d3edd82c"
    tenant_id            = "f07659d6-bf7d-47a1-a231-8aa05f02c64e"
   
  }
}

provider "azurerm" {
  features {}
 
}

# Define any Azure resources to be created here. A simple resource group is shown here as a minimal example.
resource "azurerm_resource_group" "anjigithubdeploy" {
  name     = "anjigithubdeploy_RG"
  location = "East US"
  
}


  

