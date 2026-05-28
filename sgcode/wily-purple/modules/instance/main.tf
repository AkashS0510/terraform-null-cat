resource "aws_instance" "this" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  availability_zone      = var.availability_zone
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  source_dest_check      = var.source_dest_check
  ebs_optimized          = var.ebs_optimized
  monitoring             = var.monitoring
  tenancy                = var.tenancy

  tags = {
    Name = var.name_tag
  }

  capacity_reservation_specification {
    capacity_reservation_preference = var.capacity_reservation_preference
  }

  enclave_options {
    enabled = var.enclave_options_enabled
  }

  metadata_options {
    http_endpoint               = var.metadata_http_endpoint
    http_protocol_ipv6          = var.metadata_http_protocol_ipv6
    http_put_response_hop_limit = var.metadata_http_put_response_hop_limit
    http_tokens                 = var.metadata_http_tokens
    instance_metadata_tags      = var.metadata_instance_metadata_tags
  }

  root_block_device {
    delete_on_termination = var.root_block_device_delete_on_termination
  }
}