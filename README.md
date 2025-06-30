# Azure Terraform WebApp

Terraform configuration for deploying an Azure App Service Web App along with its supporting infrastructure on Azure.

## 🚀 Features

- Deploys an Azure Resource Group and App Service Plan (Linux by default)
- Creates an Azure App Service (Web App) with HTTPS enforcement
- Configures optional VNet integration, custom domains, and SSL/TLS
- Enables diagnostic logs to Storage Account and/or Log Analytics
- Supports CI/CD via GitHub source control integration
- Implements secure defaults: restricted public access and managed identities
