module "key_pair" {
  source = "./modules/key_pair"

  key_name   = var.key_pair_key_name
  public_key = var.key_pair_public_key
}

module "network_interface" {
  source = "./modules/network_interface"

  subnet_id          = var.network_interface_subnet_id
  private_ip_address = var.network_interface_private_ip_address
  security_group_id  = var.network_interface_security_group_id
  source_dest_check  = var.network_interface_source_dest_check
}

module "instance" {
  source = "./modules/instance"

  ami                                     = var.instance_ami
  instance_type                           = var.instance_instance_type
  key_name                                = module.key_pair.key_name
  availability_zone                       = var.instance_availability_zone
  subnet_id                               = var.instance_subnet_id
  security_group_id                       = var.instance_security_group_id
  source_dest_check                       = var.instance_source_dest_check
  ebs_optimized                           = var.instance_ebs_optimized
  monitoring                              = var.instance_monitoring
  tenancy                                 = var.instance_tenancy
  metadata_http_endpoint                  = var.instance_metadata_http_endpoint
  metadata_http_protocol_ipv6             = var.instance_metadata_http_protocol_ipv6
  metadata_http_put_response_hop_limit    = var.instance_metadata_http_put_response_hop_limit
  metadata_http_tokens                    = var.instance_metadata_http_tokens
  metadata_instance_metadata_tags         = var.instance_metadata_instance_metadata_tags
  capacity_reservation_preference         = var.instance_capacity_reservation_preference
  enclave_options_enabled                 = var.instance_enclave_options_enabled
  root_block_device_delete_on_termination = var.instance_root_block_device_delete_on_termination
  name_tag                                = var.instance_name_tag
}