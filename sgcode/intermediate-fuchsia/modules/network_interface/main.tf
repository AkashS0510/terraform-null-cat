resource "aws_network_interface" "this" {
  subnet_id         = var.subnet_id
  description       = var.description
  security_groups   = var.security_groups
  source_dest_check = var.source_dest_check
  tags              = var.tags
}