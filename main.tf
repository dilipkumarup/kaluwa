terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.29.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "tfstate"
      storage_account_name = "dilipstg1"
      container_name       = "dilip-con1"
      key                  = "dku.tfstate"
  }
}


provider "azurerm" {
  features {}
  subscription_id = "f5c092a3-a10b-4952-9791-a66c5de6792b"
}


resource "azurerm_resource_group" "dilipresource" {
  name     = "dilip-rg6"
  location = "West Europe"
}

resource "azurerm_resource_group" "dilipres203" {
  name     = "dilip-rg8"
  location = "West Europe"
}
