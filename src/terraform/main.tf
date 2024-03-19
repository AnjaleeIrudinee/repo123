
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
    storage_account_name = "anjigithubdeploy"
    container_name       = "newcontainer1"
    key                  = "prod.terraform.newcontainer1"
  
   
  }
}

provider "azurerm" {
  features {}
 
}

# Define any Azure resources to be created here. A simple resource group is shown here as a minimal example.
resource "azurerm_resource_group" "devops" {
  name     = "devops"
  location = "East US"
  
}


  

