variable "minecraft_version" {
  description = "Which version of minecraft"
  type        = string
  default     = "latest"
}

variable "type" {
  description = "Which type of version: release or snapshot"
  type        = string
  default     = "release"
}

