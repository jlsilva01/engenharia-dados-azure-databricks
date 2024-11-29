resource "random_id" "sql_server_name_unique" {
  byte_length = 8
}

resource "azurerm_mssql_server" "sql_server" {
  name                         = "sqlserver${random_id.sql_server_name_unique.hex}"
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.admin_login
  administrator_login_password = var.admin_password
}

resource "azurerm_mssql_database" "sql_database" {
  name                 = var.database_name
  server_id            = azurerm_mssql_server.sql_server.id
  collation            = "SQL_Latin1_General_CP1_CI_AS"
  sku_name             = "Basic"
  max_size_gb          = 2
  zone_redundant       = false
  storage_account_type = "Local"
}

