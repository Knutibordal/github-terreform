terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-terraform-backend-tim"
    storage_account_name = "sabetfstimcfw8rawacd"
    container_name       = "tfstate"
    key                  = "web-kib.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}