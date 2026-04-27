resource "aws_route_table" "this" {
  for_each = var.route_tables

  vpc_id = each.value.vpc_id
  route  = each.value.routes
  tags   = each.value.tags
}