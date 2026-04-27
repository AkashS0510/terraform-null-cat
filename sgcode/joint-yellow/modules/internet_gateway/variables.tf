variable "internet_gateways" {
  description = "Map of internet gateways to create"
  type        = map(object({ vpc_id = string, tags = map(string) }))
}