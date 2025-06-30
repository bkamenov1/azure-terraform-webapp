# Azure Terraform WebApp

Terraform configuration for deploying an Azure App Service Web App along with its supporting infrastructure on Azure.

## 🚀 Features

- Deploys an Azure Resource Group and App Service Plan (Linux by default)
- Creates an Azure App Service (Web App) with HTTPS enforcement
- Configures optional VNet integration, custom domains, and SSL/TLS
- Enables diagnostic logs to Storage Account and/or Log Analytics
- Supports CI/CD via GitHub source control integration
- Implements secure defaults: restricted public access and managed identities

## 📋 Prerequisites

- Terraform v1.3+  
- AzureRM provider v3+  
- Azure CLI with login access and appropriate permissions:
  - `Contributor` on Resource Group  
  - `App Service Contributor` on App Service Plan  
  - `Log Analytics Contributor` if monitoring is enabled

## ⚙️ Usage

```hcl
provider "azurerm" {
  features {}
}

module "webapp" {
  source = "github.com/bkamenov1/azure-terraform-webapp"

  resource_group_name = "my-rg"
  location            = "West Europe"

  app_service_plan_name = "my-plan"
  app_name              = "my-sample-app"

  sku_name              = "B1"
  https_only            = true

  enable_log_analytics  = true
  log_analytics_workspace_id = azurerm_log_analytics_workspace.main.id

  enable_vnet_integration = false
  subnet_id               = null

  # Optional features
  app_settings = {
    "ENV" = "production"
  }

  custom_domains = {
    "www.example.com" = {
      certificate_keyvault_id = "/subscriptions/.../keyvaults/.../certificates/sslCert"
    }
  }
}
