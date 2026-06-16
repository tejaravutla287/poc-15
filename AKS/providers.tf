terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  backend "remote" {
    # Replace with your exact Terraform Cloud Organization Name
    organization = "<YOUR_TERRAFORM_CLOUD_ORGANIZATION_NAME>"

    workspaces {
      name = "azure-aks-deployment"
    }
  }
}

provider "azurerm" {
  features {}
}
