terraform {
  # Local backend storage example
  # backend "local" {
  #   path = "terraform.tfstate"
  # }

  # Azure backend storage example
  backend "azurerm" {}

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.99.0"
    }
  }
}

provider "azurerm" {
  features {}
}
