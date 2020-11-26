variable "infrastructure" {
  description = "Details of the Azure infrastructure to deploy the SAP landscape into"
  default     = {}
}

variable "options" {
  description = "Configuration options"
  default     = {}
}

variable "ssh-timeout" {
  description = "Timeout for connection that is used by provisioner"
  default     = "30s"
}

variable "sshkey" {
  description = "Details of ssh key pair"
  default = {
    path_to_public_key  = "~/.ssh/id_rsa.pub",
    path_to_private_key = "~/.ssh/id_rsa"
  }
}

variable "key_vault" {
  description = "The user brings existing Azure Key Vaults"
  default     = ""
}
