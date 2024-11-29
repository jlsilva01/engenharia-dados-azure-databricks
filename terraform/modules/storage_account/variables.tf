variable "resource_group_name" {}
variable "location" {}
variable "containers" {
  description = "Names of the containers to create."
  type        = list(string)
  default     = ["landing-zone", "bronze", "silver", "gold"]
}
