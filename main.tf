terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.29.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "dilip-rg"
      storage_account_name = "dilipstg2"
      container_name       = "dilip-con1"
      key                  = "dku.tfstate"
      use_azuread_auth     = true
  }
}


provider "azurerm" {
  features {}
  subscription_id = "76095b6e-0585-402e-8e43-281835aebfd1"
}


resource "azurerm_resource_group" "dilipresource" {
  name     = "dilip-rg6"
  location = "West Europe"
}


