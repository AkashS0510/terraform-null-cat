variable "vpcs" {
  description = "Map of VPCs to create"
  type        = map(object({ cidr_block = string, instance_tenancy = string, tags = map(string) }))
}