variable "kms_name" {
  description = "the name of kms key"
  type = string
}

variable "deletion_window_in_days" {
  description = "Duration in days after which the key is deleted after destruction of the resource"
  type = number
}

variable "enable_key_rotation" {
  description = "Specifies whether key rotation is enabled"
  type = bool
}

variable "alias" {
  description = "The display name of the alias"
  type = string
}

variable "secrets" {
  description = "a json of secrets to decrypt"
}