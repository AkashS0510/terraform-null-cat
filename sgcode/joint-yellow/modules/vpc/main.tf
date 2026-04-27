resource "aws_vpc" "this" {
  for_each = var.vpcs

  cidr_block        = each.value.cidr_block
  instance_tenancy  = each.value.instance_tenancy
  tags              = each.value.tags
}