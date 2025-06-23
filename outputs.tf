output "webapp_url" {
  value = azurerm_app_service.webapp.default_site_hostname
}

output "storage_account_name" {
  value = azurerm_storage_account.storage.name
}

output "key_vault_uri" {
  value = azurerm_key_vault.vault.vault_uri
}
