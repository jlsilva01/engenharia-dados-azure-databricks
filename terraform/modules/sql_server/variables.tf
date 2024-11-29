variable "resource_group_name" {
  description = "O nome do Resource Group onde o SQL Server será criado"
  type        = string
}

variable "location" {
  description = "A localização onde o SQL Server será criado"
  type        = string
}

variable "admin_login" {
  description = "O nome de usuário administrador do SQL Server"
  type        = string
}

variable "admin_password" {
  description = "A senha para o usuário administrador do SQL Server"
  type        = string
  sensitive   = true
}

variable "database_name" {
  description = "O nome do banco de dados a ser criado no SQL Server"
  type        = string
  default     = "defaultdb"
}

variable "database_sku" {
  description = "A SKU do banco de dados"
  type        = string
  default     = "Basic"
}

variable "database_max_size_gb" {
  description = "O tamanho máximo do banco de dados em GB"
  type        = number
  default     = 2
}
