resource "random_id" "storage_account_name_unique" {
  byte_length = 8
}

resource "azurerm_storage_account" "storage" {
  name                     = "datalake${random_id.storage_account_name_unique.hex}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  is_hns_enabled           = true

  blob_properties {
    delete_retention_policy {
      days = 7
    }
    container_delete_retention_policy {
      days = 7
    }
  }
}

resource "azurerm_storage_container" "containers" {
  for_each = toset(var.containers)

  name                  = each.value
  storage_account_id    = azurerm_storage_account.storage.id
  container_access_type = "private"
}
