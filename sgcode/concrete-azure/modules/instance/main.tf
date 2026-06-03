resource "aws_instance" "this" {
  ami                    = var.ami_id
  availability_zone      = var.availability_zone
  iam_instance_profile   = var.iam_instance_profile != "" ? var.iam_instance_profile : null
  instance_type          = var.instance_type
  key_name               = var.key_name != "" ? var.key_name : null
  monitoring             = var.monitoring
  source_dest_check      = var.source_dest_check
  subnet_id              = var.subnet_id
  tenancy                = var.tenancy
  vpc_security_group_ids = var.vpc_security_group_ids

  metadata_options {
    http_endpoint               = var.metadata_http_endpoint
    http_protocol_ipv6          = var.metadata_http_protocol_ipv6
    http_put_response_hop_limit = var.metadata_http_put_response_hop_limit
    http_tokens                 = var.metadata_http_tokens
    instance_metadata_tags      = var.metadata_instance_metadata_tags
  }

  tags = var.tags
}