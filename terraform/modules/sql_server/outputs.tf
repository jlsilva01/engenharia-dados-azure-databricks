output "sql_server_name" {
  description = "O nome do SQL Server criado"
  value       = azurerm_mssql_server.sql_server.name
}

output "sql_server_fqdn" {
  description = "O nome de domínio completo (FQDN) do SQL Server"
  value       = azurerm_mssql_server.sql_server.fully_qualified_domain_name
}

output "database_name" {
  description = "O nome do banco de dados criado"
  value       = azurerm_mssql_database.sql_database.name
}

output "sql_server_id" {
  description = "O ID do SQL Server"
  value       = azurerm_mssql_server.sql_server.id
}
