variable "resource_group_name" {
  type        = string
  default     = "tf-webapp-rg"
  description = "Resource group name"
}

variable "location" {
  type        = string
  default     = "West Europe"
  description = "Azure region"
}

variable "app_service_plan_name" {
  type        = string
  default     = "tf-appservice-plan"
}

variable "webapp_name" {
  type        = string
  default     = "tf-webapp-demo"
}

variable "sku" {
  type        = string
  default     = "B1"
}
