variable "security_groups" {
  description = "Map of security groups to create"
  type        = map(object({ name = string, description = string, vpc_id = string, ingress = list(object({ from_port = number, to_port = number, protocol = string, cidr_blocks = optional(list(string)), security_groups = optional(list(string)), description = optional(string) })), egress = list(object({ from_port = number, to_port = number, protocol = string, cidr_blocks = optional(list(string)), description = optional(string) })), tags = map(string) }))
}