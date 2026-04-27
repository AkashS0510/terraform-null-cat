variable "subnets" {
  description = "Map of subnets to create"
  type        = map(object({ vpc_id = string, cidr_block = string, availability_zone = string, map_public_ip_on_launch = bool, assign_ipv6_address_on_creation = bool, tags = map(string) }))
}