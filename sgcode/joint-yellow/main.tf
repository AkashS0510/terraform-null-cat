module "vpc" {
  source   = "./modules/vpc"
  for_each = var.vpcs

  vpcs = var.vpcs
}

module "internet_gateway" {
  source   = "./modules/internet_gateway"
  for_each = var.internet_gateways

  internet_gateways = var.internet_gateways
}

module "subnet" {
  source   = "./modules/subnet"
  for_each = var.subnets

  subnets = var.subnets
}

module "route_table" {
  source   = "./modules/route_table"
  for_each = var.route_tables

  route_tables = var.route_tables
}

module "security_group" {
  source   = "./modules/security_group"
  for_each = var.security_groups

  security_groups = var.security_groups
}

module "instance" {
  source = "./modules/instance"

  ami                                  = var.instance_ami
  instance_type                        = var.instance_instance_type
  key_name                             = var.instance_key_name
  subnet_id                            = var.instance_subnet_id
  vpc_security_group_ids               = var.instance_vpc_security_group_ids
  availability_zone                    = var.instance_availability_zone
  source_dest_check                    = var.instance_source_dest_check
  ebs_optimized                        = var.instance_ebs_optimized
  tenancy                              = var.instance_tenancy
  metadata_http_endpoint               = var.instance_metadata_http_endpoint
  metadata_http_protocol_ipv6          = var.instance_metadata_http_protocol_ipv6
  metadata_http_put_response_hop_limit = var.instance_metadata_http_put_response_hop_limit
  metadata_http_tokens                 = var.instance_metadata_http_tokens
  metadata_instance_metadata_tags      = var.instance_metadata_instance_metadata_tags
}

module "athena_workgroup" {
  source = "./modules/athena_workgroup"

  name                               = var.athena_workgroup_name
  state                              = var.athena_workgroup_state
  enforce_workgroup_configuration    = var.athena_workgroup_enforce_workgroup_configuration
  publish_cloudwatch_metrics_enabled = var.athena_workgroup_publish_cloudwatch_metrics_enabled
  requester_pays_enabled             = var.athena_workgroup_requester_pays_enabled
  selected_engine_version            = var.athena_workgroup_selected_engine_version
}