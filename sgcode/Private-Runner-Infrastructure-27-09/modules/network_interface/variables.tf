variable "subnet_id" {
  type = string
}

variable "security_groups" {
  type    = list(string)
  default = []
}

variable "private_ip" {
  type    = string
  default = null
}

variable "description" {
  type    = string
  default = ""
}

variable "source_dest_check" {
  type    = bool
  default = true
}
