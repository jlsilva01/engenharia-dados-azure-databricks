provider "azurerm" {
  features {}

  # Autenticação via Service Principal (melhor para automação)
  client_id       = var.azure_client_id
  client_secret   = var.azure_client_secret
  tenant_id       = var.azure_tenant_id
  subscription_id = var.subscription_id
}

# Outros providers (se necessário) podem ser configurados aqui.
