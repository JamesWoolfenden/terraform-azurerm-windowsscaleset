terraform {
  required_providers {
    azurerm = {
      version = "2.56.0"
      source  = "hashicorp/azurerm"
    }
    template = {
      source  = "hashicorp/template"
      version = "2.2.0"
    }
    local = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
  }
  required_version = ">=0.14.8"
}
