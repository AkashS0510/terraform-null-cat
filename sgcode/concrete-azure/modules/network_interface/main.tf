resource "aws_network_interface" "this" {
  description       = var.description
  security_groups   = var.security_groups
  source_dest_check = var.source_dest_check
  subnet_id         = var.subnet_id
  tags              = var.tags
}