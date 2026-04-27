variable "route_tables" {
  description = "Map of route tables to create"
  type        = map(object({ vpc_id = string, routes = list(object({ cidr_block = string, gateway_id = optional(string), nat_gateway_id = optional(string) })), tags = map(string) }))
}