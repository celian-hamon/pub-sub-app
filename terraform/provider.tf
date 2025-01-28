terraform {
  # Local backend storage example
  # backend "local" {
  #   path = "terraform.tfstate"
  # }

  # Azure backend storage example
  backend "azurerm" {
    use_oidc = true
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.99.0"
    }
    azuread = {
      source = "hashicorp/azuread"
      version = "2.30.0"
    }
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}

provider "azuread" {
}