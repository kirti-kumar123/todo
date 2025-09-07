terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.32.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "kirti-stg"
    storage_account_name = "assignmentstg123"
    container_name       = "assignment"
    key                  = "terraform.tfstate"
    
  }
}

provider "azurerm" {
  features {}
  subscription_id = "972b29e5-b4b2-4f43-b814-02879737840d"
}