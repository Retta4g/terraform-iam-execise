variable "group_name" {
  description = "Name of the IAM group"
  type        = string
  default     = "developers"
}

variable "user_name_1" {
  description = "Name of the first IAM user"
  type        = string
  default     = "developer_1"
}

variable "user_name_2" {
  description = "Name of the second IAM user"
  type        = string
  default     = "developer_2"
}