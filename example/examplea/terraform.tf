terraform {
  required_providers {
    template = {
      source  = "hashicorp/template"
      version = "2.2.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.71.0"
    }
    local = {
      source  = "hashicorp/random"
      version = "3.8.1"
    }
  }
  required_version = ">=0.14.8"
}
