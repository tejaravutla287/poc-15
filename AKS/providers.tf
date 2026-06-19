terraform {
  required_version = "1.15.6"

  cloud {
    
    organization = "Bhanu_Teja"

    workspaces {
      name = "POC-15"
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}
