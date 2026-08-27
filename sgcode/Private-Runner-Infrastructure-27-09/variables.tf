variable "iam_instance_profile_name" {
  type = string
}

variable "iam_instance_profile_role" {
  type = string
}

variable "key_pairs" {
  type = map(object({
    key_name   = string
    public_key = string
  }))
  default = {}
}