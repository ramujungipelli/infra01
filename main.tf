terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.56.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  tenant_id       = var.tenant_id
  client_secret   = var.client_secret

  # Configuration options
}

resource "azurerm_resource_group" "rg01" {
  count    = length(var.locations)
  name     = "hubrg0${count.index + 1}"
  location = "${element(var.locations, count.index)}"
}
