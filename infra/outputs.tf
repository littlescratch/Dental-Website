output "static_web_app_id" {
  description = "The ID of the Azure Static Web App."
  value       = azurerm_static_web_app.dental_web.id
}

output "default_host_name" {
  description = "The default public hostname of the Azure Static Web App."
  value       = azurerm_static_web_app.dental_web.default_host_name
}

output "deployment_token" {
  description = "The deployment token (api_key) required by GitHub Actions for the AZURE_STATIC_WEB_APPS_API_TOKEN secret."
  value       = azurerm_static_web_app.dental_web.api_key
  sensitive   = true
}
