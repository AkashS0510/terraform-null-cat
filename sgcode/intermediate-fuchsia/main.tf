module "iam_instance_profile_ec2_private_runner_role" {
  source    = "./modules/iam_instance_profile"
  name      = var.iam_instance_profiles["ec2_private_runner_role"].name
  path      = var.iam_instance_profiles["ec2_private_runner_role"].path
  role_name = var.iam_instance_profiles["ec2_private_runner_role"].role_name
}

module "instance_private_runner_do_not_delete" {
  source                               = "./modules/instance"
  ami_id                               = var.instances["private_runner_do_not_delete"].ami_id
  instance_type                        = var.instances["private_runner_do_not_delete"].instance_type
  availability_zone                    = var.instances["private_runner_do_not_delete"].availability_zone
  subnet_id                            = var.instances["private_runner_do_not_delete"].subnet_id
  vpc_security_group_ids               = var.instances["private_runner_do_not_delete"].vpc_security_group_ids
  key_name                             = var.instances["private_runner_do_not_delete"].key_name
  iam_instance_profile_name            = module.iam_instance_profile_ec2_private_runner_role.instance_profile_name
  source_dest_check                    = var.instances["private_runner_do_not_delete"].source_dest_check
  monitoring                           = var.instances["private_runner_do_not_delete"].monitoring
  ebs_optimized                        = var.instances["private_runner_do_not_delete"].ebs_optimized
  tenancy                              = var.instances["private_runner_do_not_delete"].tenancy
  metadata_http_endpoint               = var.instances["private_runner_do_not_delete"].metadata_http_endpoint
  metadata_http_tokens                 = var.instances["private_runner_do_not_delete"].metadata_http_tokens
  metadata_http_put_response_hop_limit = var.instances["private_runner_do_not_delete"].metadata_http_put_response_hop_limit
  metadata_http_protocol_ipv6          = var.instances["private_runner_do_not_delete"].metadata_http_protocol_ipv6
  metadata_instance_metadata_tags      = var.instances["private_runner_do_not_delete"].metadata_instance_metadata_tags
  tags                                 = var.instances["private_runner_do_not_delete"].tags
}

module "key_pair_private_runner_workshop" {
  source     = "./modules/key_pair"
  key_name   = var.key_pairs["private_runner_workshop"].key_name
  public_key = var.key_pairs["private_runner_workshop"].public_key
}

module "network_interface_eni_0ae0ac032fb68be5b" {
  source            = "./modules/network_interface"
  subnet_id         = var.network_interfaces["eni_0ae0ac032fb68be5b"].subnet_id
  private_ips       = var.network_interfaces["eni_0ae0ac032fb68be5b"].private_ips
  security_groups   = var.network_interfaces["eni_0ae0ac032fb68be5b"].security_groups
  source_dest_check = var.network_interfaces["eni_0ae0ac032fb68be5b"].source_dest_check
  description       = var.network_interfaces["eni_0ae0ac032fb68be5b"].description
  tags              = var.network_interfaces["eni_0ae0ac032fb68be5b"].tags
}

module "iam_instance_profile_eks_fece5f1f" {
  source    = "./modules/iam_instance_profile"
  name      = var.iam_instance_profiles["eks_fece5f1f_94cc_37f3_cca2_2de45fbc88e4"].name
  path      = var.iam_instance_profiles["eks_fece5f1f_94cc_37f3_cca2_2de45fbc88e4"].path
  role_name = var.iam_instance_profiles["eks_fece5f1f_94cc_37f3_cca2_2de45fbc88e4"].role_name
}

module "instance_managed_node" {
  source                               = "./modules/instance"
  ami_id                               = var.instances["managed_node"].ami_id
  instance_type                        = var.instances["managed_node"].instance_type
  availability_zone                    = var.instances["managed_node"].availability_zone
  subnet_id                            = var.instances["managed_node"].subnet_id
  vpc_security_group_ids               = var.instances["managed_node"].vpc_security_group_ids
  key_name                             = var.instances["managed_node"].key_name
  iam_instance_profile_name            = module.iam_instance_profile_eks_fece5f1f.instance_profile_name
  source_dest_check                    = var.instances["managed_node"].source_dest_check
  monitoring                           = var.instances["managed_node"].monitoring
  ebs_optimized                        = var.instances["managed_node"].ebs_optimized
  tenancy                              = var.instances["managed_node"].tenancy
  metadata_http_endpoint               = var.instances["managed_node"].metadata_http_endpoint
  metadata_http_tokens                 = var.instances["managed_node"].metadata_http_tokens
  metadata_http_put_response_hop_limit = var.instances["managed_node"].metadata_http_put_response_hop_limit
  metadata_http_protocol_ipv6          = var.instances["managed_node"].metadata_http_protocol_ipv6
  metadata_instance_metadata_tags      = var.instances["managed_node"].metadata_instance_metadata_tags
  tags                                 = var.instances["managed_node"].tags
}

module "network_interface_eni_0766757b2170188e5" {
  source            = "./modules/network_interface"
  subnet_id         = var.network_interfaces["eni_0766757b2170188e5"].subnet_id
  private_ips       = var.network_interfaces["eni_0766757b2170188e5"].private_ips
  security_groups   = var.network_interfaces["eni_0766757b2170188e5"].security_groups
  source_dest_check = var.network_interfaces["eni_0766757b2170188e5"].source_dest_check
  description       = var.network_interfaces["eni_0766757b2170188e5"].description
  tags              = var.network_interfaces["eni_0766757b2170188e5"].tags
}

module "network_interface_managed_node" {
  source            = "./modules/network_interface"
  subnet_id         = var.network_interfaces["managed_node"].subnet_id
  private_ips       = var.network_interfaces["managed_node"].private_ips
  security_groups   = var.network_interfaces["managed_node"].security_groups
  source_dest_check = var.network_interfaces["managed_node"].source_dest_check
  description       = var.network_interfaces["managed_node"].description
  tags              = var.network_interfaces["managed_node"].tags
}

module "iam_instance_profile_sg_private_runner_connector" {
  source    = "./modules/iam_instance_profile"
  name      = var.iam_instance_profiles["sg_private_runner_connector"].name
  path      = var.iam_instance_profiles["sg_private_runner_connector"].path
  role_name = var.iam_instance_profiles["sg_private_runner_connector"].role_name
}

module "instance_aplattel_sg_private_runner" {
  source                               = "./modules/instance"
  ami_id                               = var.instances["aplattel_sg_private_runner"].ami_id
  instance_type                        = var.instances["aplattel_sg_private_runner"].instance_type
  availability_zone                    = var.instances["aplattel_sg_private_runner"].availability_zone
  subnet_id                            = var.instances["aplattel_sg_private_runner"].subnet_id
  vpc_security_group_ids               = var.instances["aplattel_sg_private_runner"].vpc_security_group_ids
  key_name                             = var.instances["aplattel_sg_private_runner"].key_name
  iam_instance_profile_name            = module.iam_instance_profile_sg_private_runner_connector.instance_profile_name
  source_dest_check                    = var.instances["aplattel_sg_private_runner"].source_dest_check
  monitoring                           = var.instances["aplattel_sg_private_runner"].monitoring
  ebs_optimized                        = var.instances["aplattel_sg_private_runner"].ebs_optimized
  tenancy                              = var.instances["aplattel_sg_private_runner"].tenancy
  metadata_http_endpoint               = var.instances["aplattel_sg_private_runner"].metadata_http_endpoint
  metadata_http_tokens                 = var.instances["aplattel_sg_private_runner"].metadata_http_tokens
  metadata_http_put_response_hop_limit = var.instances["aplattel_sg_private_runner"].metadata_http_put_response_hop_limit
  metadata_http_protocol_ipv6          = var.instances["aplattel_sg_private_runner"].metadata_http_protocol_ipv6
  metadata_instance_metadata_tags      = var.instances["aplattel_sg_private_runner"].metadata_instance_metadata_tags
  tags                                 = var.instances["aplattel_sg_private_runner"].tags
}

module "key_pair_aplattel_private_runner" {
  source     = "./modules/key_pair"
  key_name   = var.key_pairs["aplattel_private_runner"].key_name
  public_key = var.key_pairs["aplattel_private_runner"].public_key
}

module "network_interface_eni_0ec9413e836fa1cad" {
  source            = "./modules/network_interface"
  subnet_id         = var.network_interfaces["eni_0ec9413e836fa1cad"].subnet_id
  private_ips       = var.network_interfaces["eni_0ec9413e836fa1cad"].private_ips
  security_groups   = var.network_interfaces["eni_0ec9413e836fa1cad"].security_groups
  source_dest_check = var.network_interfaces["eni_0ec9413e836fa1cad"].source_dest_check
  description       = var.network_interfaces["eni_0ec9413e836fa1cad"].description
  tags              = var.network_interfaces["eni_0ec9413e836fa1cad"].tags
}

module "instance_i_000e597ea8aa8260b" {
  source                               = "./modules/instance"
  ami_id                               = var.instances["i_000e597ea8aa8260b"].ami_id
  instance_type                        = var.instances["i_000e597ea8aa8260b"].instance_type
  availability_zone                    = var.instances["i_000e597ea8aa8260b"].availability_zone
  subnet_id                            = var.instances["i_000e597ea8aa8260b"].subnet_id
  vpc_security_group_ids               = var.instances["i_000e597ea8aa8260b"].vpc_security_group_ids
  key_name                             = var.instances["i_000e597ea8aa8260b"].key_name
  iam_instance_profile_name            = var.instances["i_000e597ea8aa8260b"].iam_instance_profile_name
  source_dest_check                    = var.instances["i_000e597ea8aa8260b"].source_dest_check
  monitoring                           = var.instances["i_000e597ea8aa8260b"].monitoring
  ebs_optimized                        = var.instances["i_000e597ea8aa8260b"].ebs_optimized
  tenancy                              = var.instances["i_000e597ea8aa8260b"].tenancy
  metadata_http_endpoint               = var.instances["i_000e597ea8aa8260b"].metadata_http_endpoint
  metadata_http_tokens                 = var.instances["i_000e597ea8aa8260b"].metadata_http_tokens
  metadata_http_put_response_hop_limit = var.instances["i_000e597ea8aa8260b"].metadata_http_put_response_hop_limit
  metadata_http_protocol_ipv6          = var.instances["i_000e597ea8aa8260b"].metadata_http_protocol_ipv6
  metadata_instance_metadata_tags      = var.instances["i_000e597ea8aa8260b"].metadata_instance_metadata_tags
  tags                                 = var.instances["i_000e597ea8aa8260b"].tags
}

module "key_pair_taher_private_runner" {
  source     = "./modules/key_pair"
  key_name   = var.key_pairs["taher_private_runner"].key_name
  public_key = var.key_pairs["taher_private_runner"].public_key
}

module "network_interface_eni_055ce4572025a47de" {
  source            = "./modules/network_interface"
  subnet_id         = var.network_interfaces["eni_055ce4572025a47de"].subnet_id
  private_ips       = var.network_interfaces["eni_055ce4572025a47de"].private_ips
  security_groups   = var.network_interfaces["eni_055ce4572025a47de"].security_groups
  source_dest_check = var.network_interfaces["eni_055ce4572025a47de"].source_dest_check
  description       = var.network_interfaces["eni_055ce4572025a47de"].description
  tags              = var.network_interfaces["eni_055ce4572025a47de"].tags
}

module "instance_i_007e6212f82fd1d38" {
  source                               = "./modules/instance"
  ami_id                               = var.instances["i_007e6212f82fd1d38"].ami_id
  instance_type                        = var.instances["i_007e6212f82fd1d38"].instance_type
  availability_zone                    = var.instances["i_007e6212f82fd1d38"].availability_zone
  subnet_id                            = var.instances["i_007e6212f82fd1d38"].subnet_id
  vpc_security_group_ids               = var.instances["i_007e6212f82fd1d38"].vpc_security_group_ids
  key_name                             = var.instances["i_007e6212f82fd1d38"].key_name
  iam_instance_profile_name            = var.instances["i_007e6212f82fd1d38"].iam_instance_profile_name
  source_dest_check                    = var.instances["i_007e6212f82fd1d38"].source_dest_check
  monitoring                           = var.instances["i_007e6212f82fd1d38"].monitoring
  ebs_optimized                        = var.instances["i_007e6212f82fd1d38"].ebs_optimized
  tenancy                              = var.instances["i_007e6212f82fd1d38"].tenancy
  metadata_http_endpoint               = var.instances["i_007e6212f82fd1d38"].metadata_http_endpoint
  metadata_http_tokens                 = var.instances["i_007e6212f82fd1d38"].metadata_http_tokens
  metadata_http_put_response_hop_limit = var.instances["i_007e6212f82fd1d38"].metadata_http_put_response_hop_limit
  metadata_http_protocol_ipv6          = var.instances["i_007e6212f82fd1d38"].metadata_http_protocol_ipv6
  metadata_instance_metadata_tags      = var.instances["i_007e6212f82fd1d38"].metadata_instance_metadata_tags
  tags                                 = var.instances["i_007e6212f82fd1d38"].tags
}

module "network_interface_eni_0bbe8177077664b76" {
  source            = "./modules/network_interface"
  subnet_id         = var.network_interfaces["eni_0bbe8177077664b76"].subnet_id
  private_ips       = var.network_interfaces["eni_0bbe8177077664b76"].private_ips
  security_groups   = var.network_interfaces["eni_0bbe8177077664b76"].security_groups
  source_dest_check = var.network_interfaces["eni_0bbe8177077664b76"].source_dest_check
  description       = var.network_interfaces["eni_0bbe8177077664b76"].description
  tags              = var.network_interfaces["eni_0bbe8177077664b76"].tags
}

module "instance_i_00af4198af591318c" {
  source                               = "./modules/instance"
  ami_id                               = var.instances["i_00af4198af591318c"].ami_id
  instance_type                        = var.instances["i_00af4198af591318c"].instance_type
  availability_zone                    = var.instances["i_00af4198af591318c"].availability_zone
  subnet_id                            = var.instances["i_00af4198af591318c"].subnet_id
  vpc_security_group_ids               = var.instances["i_00af4198af591318c"].vpc_security_group_ids
  key_name                             = var.instances["i_00af4198af591318c"].key_name
  iam_instance_profile_name            = var.instances["i_00af4198af591318c"].iam_instance_profile_name
  source_dest_check                    = var.instances["i_00af4198af591318c"].source_dest_check
  monitoring                           = var.instances["i_00af4198af591318c"].monitoring
  ebs_optimized                        = var.instances["i_00af4198af591318c"].ebs_optimized
  tenancy                              = var.instances["i_00af4198af591318c"].tenancy
  metadata_http_endpoint               = var.instances["i_00af4198af591318c"].metadata_http_endpoint
  metadata_http_tokens                 = var.instances["i_00af4198af591318c"].metadata_http_tokens
  metadata_http_put_response_hop_limit = var.instances["i_00af4198af591318c"].metadata_http_put_response_hop_limit
  metadata_http_protocol_ipv6          = var.instances["i_00af4198af591318c"].metadata_http_protocol_ipv6
  metadata_instance_metadata_tags      = var.instances["i_00af4198af591318c"].metadata_instance_metadata_tags
  tags                                 = var.instances["i_00af4198af591318c"].tags
}

module "key_pair_ec2_key_k3ehbblq" {
  source     = "./modules/key_pair"
  key_name   = var.key_pairs["ec2_key_k3ehbblq"].key_name
  public_key = var.key_pairs["ec2_key_k3ehbblq"].public_key
}

module "network_interface_eni_04c73891734b9a355" {
  source            = "./modules/network_interface"
  subnet_id         = var.network_interfaces["eni_04c73891734b9a355"].subnet_id
  private_ips       = var.network_interfaces["eni_04c73891734b9a355"].private_ips
  security_groups   = var.network_interfaces["eni_04c73891734b9a355"].security_groups
  source_dest_check = var.network_interfaces["eni_04c73891734b9a355"].source_dest_check
  description       = var.network_interfaces["eni_04c73891734b9a355"].description
  tags              = var.network_interfaces["eni_04c73891734b9a355"].tags
}

module "iam_instance_profile_amazon_ec2_container_service_role" {
  source    = "./modules/iam_instance_profile"
  name      = var.iam_instance_profiles["amazon_ec2_container_service_for_ec2_role"].name
  path      = var.iam_instance_profiles["amazon_ec2_container_service_for_ec2_role"].path
  role_name = var.iam_instance_profiles["amazon_ec2_container_service_for_ec2_role"].role_name
}

module "instance_ecs_instances_admin_workflow_qa" {
  source                               = "./modules/instance"
  ami_id                               = var.instances["ecs_instances_admin_workflow_qa"].ami_id
  instance_type                        = var.instances["ecs_instances_admin_workflow_qa"].instance_type
  availability_zone                    = var.instances["ecs_instances_admin_workflow_qa"].availability_zone
  subnet_id                            = var.instances["ecs_instances_admin_workflow_qa"].subnet_id
  vpc_security_group_ids               = var.instances["ecs_instances_admin_workflow_qa"].vpc_security_group_ids
  key_name                             = var.instances["ecs_instances_admin_workflow_qa"].key_name
  iam_instance_profile_name            = module.iam_instance_profile_amazon_ec2_container_service_role.instance_profile_name
  source_dest_check                    = var.instances["ecs_instances_admin_workflow_qa"].source_dest_check
  monitoring                           = var.instances["ecs_instances_admin_workflow_qa"].monitoring
  ebs_optimized                        = var.instances["ecs_instances_admin_workflow_qa"].ebs_optimized
  tenancy                              = var.instances["ecs_instances_admin_workflow_qa"].tenancy
  metadata_http_endpoint               = var.instances["ecs_instances_admin_workflow_qa"].metadata_http_endpoint
  metadata_http_tokens                 = var.instances["ecs_instances_admin_workflow_qa"].metadata_http_tokens
  metadata_http_put_response_hop_limit = var.instances["ecs_instances_admin_workflow_qa"].metadata_http_put_response_hop_limit
  metadata_http_protocol_ipv6          = var.instances["ecs_instances_admin_workflow_qa"].metadata_http_protocol_ipv6
  metadata_instance_metadata_tags      = var.instances["ecs_instances_admin_workflow_qa"].metadata_instance_metadata_tags
  tags                                 = var.instances["ecs_instances_admin_workflow_qa"].tags
}

module "key_pair_nonprod_euc1" {
  source     = "./modules/key_pair"
  key_name   = var.key_pairs["nonprod_euc1"].key_name
  public_key = var.key_pairs["nonprod_euc1"].public_key
}

module "network_interface_eni_03f18c266f4ca136e" {
  source            = "./modules/network_interface"
  subnet_id         = var.network_interfaces["eni_03f18c266f4ca136e"].subnet_id
  private_ips       = var.network_interfaces["eni_03f18c266f4ca136e"].private_ips
  security_groups   = var.network_interfaces["eni_03f18c266f4ca136e"].security_groups
  source_dest_check = var.network_interfaces["eni_03f18c266f4ca136e"].source_dest_check
  description       = var.network_interfaces["eni_03f18c266f4ca136e"].description
  tags              = var.network_interfaces["eni_03f18c266f4ca136e"].tags
}

module "instance_taher_private_runner_amz" {
  source                               = "./modules/instance"
  ami_id                               = var.instances["taher_private_runner_amz"].ami_id
  instance_type                        = var.instances["taher_private_runner_amz"].instance_type
  availability_zone                    = var.instances["taher_private_runner_amz"].availability_zone
  subnet_id                            = var.instances["taher_private_runner_amz"].subnet_id
  vpc_security_group_ids               = var.instances["taher_private_runner_amz"].vpc_security_group_ids
  key_name                             = var.instances["taher_private_runner_amz"].key_name
  iam_instance_profile_name            = var.instances["taher_private_runner_amz"].iam_instance_profile_name
  source_dest_check                    = var.instances["taher_private_runner_amz"].source_dest_check
  monitoring                           = var.instances["taher_private_runner_amz"].monitoring
  ebs_optimized                        = var.instances["taher_private_runner_amz"].ebs_optimized
  tenancy                              = var.instances["taher_private_runner_amz"].tenancy
  metadata_http_endpoint               = var.instances["taher_private_runner_amz"].metadata_http_endpoint
  metadata_http_tokens                 = var.instances["taher_private_runner_amz"].metadata_http_tokens
  metadata_http_put_response_hop_limit = var.instances["taher_private_runner_amz"].metadata_http_put_response_hop_limit
  metadata_http_protocol_ipv6          = var.instances["taher_private_runner_amz"].metadata_http_protocol_ipv6
  metadata_instance_metadata_tags      = var.instances["taher_private_runner_amz"].metadata_instance_metadata_tags
  tags                                 = var.instances["taher_private_runner_amz"].tags
}

module "network_interface_eni_0cde3d4209449554a" {
  source            = "./modules/network_interface"
  subnet_id         = var.network_interfaces["eni_0cde3d4209449554a"].subnet_id
  private_ips       = var.network_interfaces["eni_0cde3d4209449554a"].private_ips
  security_groups   = var.network_interfaces["eni_0cde3d4209449554a"].security_groups
  source_dest_check = var.network_interfaces["eni_0cde3d4209449554a"].source_dest_check
  description       = var.network_interfaces["eni_0cde3d4209449554a"].description
  tags              = var.network_interfaces["eni_0cde3d4209449554a"].tags
}

module "instance_i_015dcccda629ac122" {
  source                               = "./modules/instance"
  ami_id                               = var.instances["i_015dcccda629ac122"].ami_id
  instance_type                        = var.instances["i_015dcccda629ac122"].instance_type
  availability_zone                    = var.instances["i_015dcccda629ac122"].availability_zone
  subnet_id                            = var.instances["i_015dcccda629ac122"].subnet_id
  vpc_security_group_ids               = var.instances["i_015dcccda629ac122"].vpc_security_group_ids
  key_name                             = var.instances["i_015dcccda629ac122"].key_name
  iam_instance_profile_name            = var.instances["i_015dcccda629ac122"].iam_instance_profile_name
  source_dest_check                    = var.instances["i_015dcccda629ac122"].source_dest_check
  monitoring                           = var.instances["i_015dcccda629ac122"].monitoring
  ebs_optimized                        = var.instances["i_015dcccda629ac122"].ebs_optimized
  tenancy                              = var.instances["i_015dcccda629ac122"].tenancy
  metadata_http_endpoint               = var.instances["i_015dcccda629ac122"].metadata_http_endpoint
  metadata_http_tokens                 = var.instances["i_015dcccda629ac122"].metadata_http_tokens
  metadata_http_put_response_hop_limit = var.instances["i_015dcccda629ac122"].metadata_http_put_response_hop_limit
  metadata_http_protocol_ipv6          = var.instances["i_015dcccda629ac122"].metadata_http_protocol_ipv6
  metadata_instance_metadata_tags      = var.instances["i_015dcccda629ac122"].metadata_instance_metadata_tags
  tags                                 = var.instances["i_015dcccda629ac122"].tags
}

module "network_interface_eni_0611b2f378e918fd0" {
  source            = "./modules/network_interface"
  subnet_id         = var.network_interfaces["eni_0611b2f378e918fd0"].subnet_id
  private_ips       = var.network_interfaces["eni_0611b2f378e918fd0"].private_ips
  security_groups   = var.network_interfaces["eni_0611b2f378e918fd0"].security_groups
  source_dest_check = var.network_interfaces["eni_0611b2f378e918fd0"].source_dest_check
  description       = var.network_interfaces["eni_0611b2f378e918fd0"].description
  tags              = var.network_interfaces["eni_0611b2f378e918fd0"].tags
}

module "instance_i_01a58b9fe5e4d0c3c" {
  source                               = "./modules/instance"
  ami_id                               = var.instances["i_01a58b9fe5e4d0c3c"].ami_id
  instance_type                        = var.instances["i_01a58b9fe5e4d0c3c"].instance_type
  availability_zone                    = var.instances["i_01a58b9fe5e4d0c3c"].availability_zone
  subnet_id                            = var.instances["i_01a58b9fe5e4d0c3c"].subnet_id
  vpc_security_group_ids               = var.instances["i_01a58b9fe5e4d0c3c"].vpc_security_group_ids
  key_name                             = var.instances["i_01a58b9fe5e4d0c3c"].key_name
  iam_instance_profile_name            = var.instances["i_01a58b9fe5e4d0c3c"].iam_instance_profile_name
  source_dest_check                    = var.instances["i_01a58b9fe5e4d0c3c"].source_dest_check
  monitoring                           = var.instances["i_01a58b9fe5e4d0c3c"].monitoring
  ebs_optimized                        = var.instances["i_01a58b9fe5e4d0c3c"].ebs_optimized
  tenancy                              = var.instances["i_01a58b9fe5e4d0c3c"].tenancy
  metadata_http_endpoint               = var.instances["i_01a58b9fe5e4d0c3c"].metadata_http_endpoint
  metadata_http_tokens                 = var.instances["i_01a58b9fe5e4d0c3c"].metadata_http_tokens
  metadata_http_put_response_hop_limit = var.instances["i_01a58b9fe5e4d0c3c"].metadata_http_put_response_hop_limit
  metadata_http_protocol_ipv6          = var.instances["i_01a58b9fe5e4d0c3c"].metadata_http_protocol_ipv6
  metadata_instance_metadata_tags      = var.instances["i_01a58b9fe5e4d0c3c"].metadata_instance_metadata_tags
  tags                                 = var.instances["i_01a58b9fe5e4d0c3c"].tags
}

module "key_pair_ec2_key_16n94g2h" {
  source     = "./modules/key_pair"
  key_name   = var.key_pairs["ec2_key_16n94g2h"].key_name
  public_key = var.key_pairs["ec2_key_16n94g2h"].public_key
}

module "network_interface_eni_0419e64531f4b1e19" {
  source            = "./modules/network_interface"
  subnet_id         = var.network_interfaces["eni_0419e64531f4b1e19"].subnet_id
  private_ips       = var.network_interfaces["eni_0419e64531f4b1e19"].private_ips
  security_groups   = var.network_interfaces["eni_0419e64531f4b1e19"].security_groups
  source_dest_check = var.network_interfaces["eni_0419e64531f4b1e19"].source_dest_check
  description       = var.network_interfaces["eni_0419e64531f4b1e19"].description
  tags              = var.network_interfaces["eni_0419e64531f4b1e19"].tags
}

module "instance_privat_runner" {
  source                               = "./modules/instance"
  ami_id                               = var.instances["privat_runner"].ami_id
  instance_type                        = var.instances["privat_runner"].instance_type
  availability_zone                    = var.instances["privat_runner"].availability_zone
  subnet_id                            = var.instances["privat_runner"].subnet_id
  vpc_security_group_ids               = var.instances["privat_runner"].vpc_security_group_ids
  key_name                             = var.instances["privat_runner"].key_name
  iam_instance_profile_name            = var.instances["privat_runner"].iam_instance_profile_name
  source_dest_check                    = var.instances["privat_runner"].source_dest_check
  monitoring                           = var.instances["privat_runner"].monitoring
  ebs_optimized                        = var.instances["privat_runner"].ebs_optimized
  tenancy                              = var.instances["privat_runner"].tenancy
  metadata_http_endpoint               = var.instances["privat_runner"].metadata_http_endpoint
  metadata_http_tokens                 = var.instances["privat_runner"].metadata_http_tokens
  metadata_http_put_response_hop_limit = var.instances["privat_runner"].metadata_http_put_response_hop_limit
  metadata_http_protocol_ipv6          = var.instances["privat_runner"].metadata_http_protocol_ipv6
  metadata_instance_metadata_tags      = var.instances["privat_runner"].metadata_instance_metadata_tags
  tags                                 = var.instances["privat_runner"].tags
}

module "network_interface_eni_02228f5c1d152585c" {
  source            = "./modules/network_interface"
  subnet_id         = var.network_interfaces["eni_02228f5c1d152585c"].subnet_id
  private_ips       = var.network_interfaces["eni_02228f5c1d152585c"].private_ips
  security_groups   = var.network_interfaces["eni_02228f5c1d152585c"].security_groups
  source_dest_check = var.network_interfaces["eni_02228f5c1d152585c"].source_dest_check
  description       = var.network_interfaces["eni_02228f5c1d152585c"].description
  tags              = var.network_interfaces["eni_02228f5c1d152585c"].tags
}

module "iam_instance_profile_neha_private_runner" {
  source    = "./modules/iam_instance_profile"
  name      = var.iam_instance_profiles["neha_private_runner_runner_instance_profile"].name
  path      = var.iam_instance_profiles["neha_private_runner_runner_instance_profile"].path
  role_name = var.iam_instance_profiles["neha_private_runner_runner_instance_profile"].role_name
}

module "instance_neha_private_runner_asg" {
  source                               = "./modules/instance"
  ami_id                               = var.instances["neha_private_runner_private_runner_asg"].ami_id
  instance_type                        = var.instances["neha_private_runner_private_runner_asg"].instance_type
  availability_zone                    = var.instances["neha_private_runner_private_runner_asg"].availability_zone
  subnet_id                            = var.instances["neha_private_runner_private_runner_asg"].subnet_id
  vpc_security_group_ids               = var.instances["neha_private_runner_private_runner_asg"].vpc_security_group_ids
  key_name                             = var.instances["neha_private_runner_private_runner_asg"].key_name
  iam_instance_profile_name            = module.iam_instance_profile_neha_private_runner.instance_profile_name
  source_dest_check                    = var.instances["neha_private_runner_private_runner_asg"].source_dest_check
  monitoring                           = var.instances["neha_private_runner_private_runner_asg"].monitoring
  ebs_optimized                        = var.instances["neha_private_runner_private_runner_asg"].ebs_optimized
  tenancy                              = var.instances["neha_private_runner_private_runner_asg"].tenancy
  metadata_http_endpoint               = var.instances["neha_private_runner_private_runner_asg"].metadata_http_endpoint
  metadata_http_tokens                 = var.instances["neha_private_runner_private_runner_asg"].metadata_http_tokens
  metadata_http_put_response_hop_limit = var.instances["neha_private_runner_private_runner_asg"].metadata_http_put_response_hop_limit
  metadata_http_protocol_ipv6          = var.instances["neha_private_runner_private_runner_asg"].metadata_http_protocol_ipv6
  metadata_instance_metadata_tags      = var.instances["neha_private_runner_private_runner_asg"].metadata_instance_metadata_tags
  tags                                 = var.instances["neha_private_runner_private_runner_asg"].tags
}

module "key_pair_adis_key_pair" {
  source     = "./modules/key_pair"
  key_name   = var.key_pairs["adis_key_pair"].key_name
  public_key = var.key_pairs["adis_key_pair"].public_key
}

module "network_interface_eni_06111e22ea34335a6" {
  source            = "./modules/network_interface"
  subnet_id         = var.network_interfaces["eni_06111e22ea34335a6"].subnet_id
  private_ips       = var.network_interfaces["eni_06111e22ea34335a6"].private_ips
  security_groups   = var.network_interfaces["eni_06111e22ea34335a6"].security_groups
  source_dest_check = var.network_interfaces["eni_06111e22ea34335a6"].source_dest_check
  description       = var.network_interfaces["eni_06111e22ea34335a6"].description
  tags              = var.network_interfaces["eni_06111e22ea34335a6"].tags
}

module "instance_demo_org_prepare_release_branch_testing" {
  source                               = "./modules/instance"
  ami_id                               = var.instances["demo_org_prepare_release_branch_testing"].ami_id
  instance_type                        = var.instances["demo_org_prepare_release_branch_testing"].instance_type
  availability_zone                    = var.instances["demo_org_prepare_release_branch_testing"].availability_zone
  subnet_id                            = var.instances["demo_org_prepare_release_branch_testing"].subnet_id
  vpc_security_group_ids               = var.instances["demo_org_prepare_release_branch_testing"].vpc_security_group_ids
  key_name                             = var.instances["demo_org_prepare_release_branch_testing"].key_name
  iam_instance_profile_name            = var.instances["demo_org_prepare_release_branch_testing"].iam_instance_profile_name
  source_dest_check                    = var.instances["demo_org_prepare_release_branch_testing"].source_dest_check
  monitoring                           = var.instances["demo_org_prepare_release_branch_testing"].monitoring
  ebs_optimized                        = var.instances["demo_org_prepare_release_branch_testing"].ebs_optimized
  tenancy                              = var.instances["demo_org_prepare_release_branch_testing"].tenancy
  metadata_http_endpoint               = var.instances["demo_org_prepare_release_branch_testing"].metadata_http_endpoint
  metadata_http_tokens                 = var.instances["demo_org_prepare_release_branch_testing"].metadata_http_tokens
  metadata_http_put_response_hop_limit = var.instances["demo_org_prepare_release_branch_testing"].metadata_http_put_response_hop_limit
  metadata_http_protocol_ipv6          = var.instances["demo_org_prepare_release_branch_testing"].metadata_http_protocol_ipv6
  metadata_instance_metadata_tags      = var.instances["demo_org_prepare_release_branch_testing"].metadata_instance_metadata_tags
  tags                                 = var.instances["demo_org_prepare_release_branch_testing"].tags
}

module "network_interface_eni_0a59b1157f1536d50" {
  source            = "./modules/network_interface"
  subnet_id         = var.network_interfaces["eni_0a59b1157f1536d50"].subnet_id
  private_ips       = var.network_interfaces["eni_0a59b1157f1536d50"].private_ips
  security_groups   = var.network_interfaces["eni_0a59b1157f1536d50"].security_groups
  source_dest_check = var.network_interfaces["eni_0a59b1157f1536d50"].source_dest_check
  description       = var.network_interfaces["eni_0a59b1157f1536d50"].description
  tags              = var.network_interfaces["eni_0a59b1157f1536d50"].tags
}

module "instance_test_instance" {
  source                               = "./modules/instance"
  ami_id                               = var.instances["test_instance"].ami_id
  instance_type                        = var.instances["test_instance"].instance_type
  availability_zone                    = var.instances["test_instance"].availability_zone
  subnet_id                            = var.instances["test_instance"].subnet_id
  vpc_security_group_ids               = var.instances["test_instance"].vpc_security_group_ids
  key_name                             = var.instances["test_instance"].key_name
  iam_instance_profile_name            = var.instances["test_instance"].iam_instance_profile_name
  source_dest_check                    = var.instances["test_instance"].source_dest_check
  monitoring                           = var.instances["test_instance"].monitoring
  ebs_optimized                        = var.instances["test_instance"].ebs_optimized
  tenancy                              = var.instances["test_instance"].tenancy
  metadata_http_endpoint               = var.instances["test_instance"].metadata_http_endpoint
  metadata_http_tokens                 = var.instances["test_instance"].metadata_http_tokens
  metadata_http_put_response_hop_limit = var.instances["test_instance"].metadata_http_put_response_hop_limit
  metadata_http_protocol_ipv6          = var.instances["test_instance"].metadata_http_protocol_ipv6
  metadata_instance_metadata_tags      = var.instances["test_instance"].metadata_instance_metadata_tags
  tags                                 = var.instances["test_instance"].tags
}

module "network_interface_eni_012b6b714b4087819" {
  source            = "./modules/network_interface"
  subnet_id         = var.network_interfaces["eni_012b6b714b4087819"].subnet_id
  private_ips       = var.network_interfaces["eni_012b6b714b4087819"].private_ips
  security_groups   = var.network_interfaces["eni_012b6b714b4087819"].security_groups
  source_dest_check = var.network_interfaces["eni_012b6b714b4087819"].source_dest_check
  description       = var.network_interfaces["eni_012b6b714b4087819"].description
  tags              = var.network_interfaces["eni_012b6b714b4087819"].tags
}

module "instance_i_02a92f89d43898403" {
  source                               = "./modules/instance"
  ami_id                               = var.instances["i_02a92f89d43898403"].ami_id
  instance_type                        = var.instances["i_02a92f89d43898403"].instance_type
  availability_zone                    = var.instances["i_02a92f89d43898403"].availability_zone
  subnet_id                            = var.instances["i_02a92f89d43898403"].subnet_id
  vpc_security_group_ids               = var.instances["i_02a92f89d43898403"].vpc_security_group_ids
  key_name                             = var.instances["i_02a92f89d43898403"].key_name
  iam_instance_profile_name            = var.instances["i_02a92f89d43898403"].iam_instance_profile_name
  source_dest_check                    = var.instances["i_02a92f89d43898403"].source_dest_check
  monitoring                           = var.instances["i_02a92f89d43898403"].monitoring
  ebs_optimized                        = var.instances["i_02a92f89d43898403"].ebs_optimized
  tenancy                              = var.instances["i_02a92f89d43898403"].tenancy
  metadata_http_endpoint               = var.instances["i_02a92f89d43898403"].metadata_http_endpoint
  metadata_http_tokens                 = var.instances["i_02a92f89d43898403"].metadata_http_tokens
  metadata_http_put_response_hop_limit = var.instances["i_02a92f89d43898403"].metadata_http_put_response_hop_limit
  metadata_http_protocol_ipv6          = var.instances["i_02a92f89d43898403"].metadata_http_protocol_ipv6
  metadata_instance_metadata_tags      = var.instances["i_02a92f89d43898403"].metadata_instance_metadata_tags
  tags                                 = var.instances["i_02a92f89d43898403"].tags
}

module "network_interface_eni_0d738514adbd9a62b" {
  source            = "./modules/network_interface"
  subnet_id         = var.network_interfaces["eni_0d738514adbd9a62b"].subnet_id
  private_ips       = var.network_interfaces["eni_0d738514adbd9a62b"].private_ips
  security_groups   = var.network_interfaces["eni_0d738514adbd9a62b"].security_groups
  source_dest_check = var.network_interfaces["eni_0d738514adbd9a62b"].source_dest_check
  description       = var.network_interfaces["eni_0d738514adbd9a62b"].description
  tags              = var.network_interfaces["eni_0d738514adbd9a62b"].tags
}

module "instance_liveeo_private_replica_debug" {
  source                               = "./modules/instance"
  ami_id                               = var.instances["liveeo_private_replica_debug"].ami_id
  instance_type                        = var.instances["liveeo_private_replica_debug"].instance_type
  availability_zone                    = var.instances["liveeo_private_replica_debug"].availability_zone
  subnet_id                            = var.instances["liveeo_private_replica_debug"].subnet_id
  vpc_security_group_ids               = var.instances["liveeo_private_replica_debug"].vpc_security_group_ids
  key_name                             = var.instances["liveeo_private_replica_debug"].key_name
  iam_instance_profile_name            = var.instances["liveeo_private_replica_debug"].iam_instance_profile_name
  source_dest_check                    = var.instances["liveeo_private_replica_debug"].source_dest_check
  monitoring                           = var.instances["liveeo_private_replica_debug"].monitoring
  ebs_optimized                        = var.instances["liveeo_private_replica_debug"].ebs_optimized
  tenancy                              = var.instances["liveeo_private_replica_debug"].tenancy
  metadata_http_endpoint               = var.instances["liveeo_private_replica_debug"].metadata_http_endpoint
  metadata_http_tokens                 = var.instances["liveeo_private_replica_debug"].metadata_http_tokens
  metadata_http_put_response_hop_limit = var.instances["liveeo_private_replica_debug"].metadata_http_put_response_hop_limit
  metadata_http_protocol_ipv6          = var.instances["liveeo_private_replica_debug"].metadata_http_protocol_ipv6
  metadata_instance_metadata_tags      = var.instances["liveeo_private_replica_debug"].metadata_instance_metadata_tags
  tags                                 = var.instances["liveeo_private_replica_debug"].tags
}

module "network_interface_eni_0acba230c9dc664c3" {
  source            = "./modules/network_interface"
  subnet_id         = var.network_interfaces["eni_0acba230c9dc664c3"].subnet_id
  private_ips       = var.network_interfaces["eni_0acba230c9dc664c3"].private_ips
  security_groups   = var.network_interfaces["eni_0acba230c9dc664c3"].security_groups
  source_dest_check = var.network_interfaces["eni_0acba230c9dc664c3"].source_dest_check
  description       = var.network_interfaces["eni_0acba230c9dc664c3"].description
  tags              = var.network_interfaces["eni_0acba230c9dc664c3"].tags
}

module "instance_i_0312a14319779a1f4" {
  source                               = "./modules/instance"
  ami_id                               = var.instances["i_0312a14319779a1f4"].ami_id
  instance_type                        = var.instances["i_0312a14319779a1f4"].instance_type
  availability_zone                    = var.instances["i_0312a14319779a1f4"].availability_zone
  subnet_id                            = var.instances["i_0312a14319779a1f4"].subnet_id
  vpc_security_group_ids               = var.instances["i_0312a14319779a1f4"].vpc_security_group_ids
  key_name                             = var.instances["i_0312a14319779a1f4"].key_name
  iam_instance_profile_name            = var.instances["i_0312a14319779a1f4"].iam_instance_profile_name
  source_dest_check                    = var.instances["i_0312a14319779a1f4"].source_dest_check
  monitoring                           = var.instances["i_0312a14319779a1f4"].monitoring
  ebs_optimized                        = var.instances["i_0312a14319779a1f4"].ebs_optimized
  tenancy                              = var.instances["i_0312a14319779a1f4"].tenancy
  metadata_http_endpoint               = var.instances["i_0312a14319779a1f4"].metadata_http_endpoint
  metadata_http_tokens                 = var.instances["i_0312a14319779a1f4"].metadata_http_tokens
  metadata_http_put_response_hop_limit = var.instances["i_0312a14319779a1f4"].metadata_http_put_response_hop_limit
  metadata_http_protocol_ipv6          = var.instances["i_0312a14319779a1f4"].metadata_http_protocol_ipv6
  metadata_instance_metadata_tags      = var.instances["i_0312a14319779a1f4"].metadata_instance_metadata_tags
  tags                                 = var.instances["i_0312a14319779a1f4"].tags
}

module "network_interface_eni_044bd40334f459f88" {
  source            = "./modules/network_interface"
  subnet_id         = var.network_interfaces["eni_044bd40334f459f88"].subnet_id
  private_ips       = var.network_interfaces["eni_044bd40334f459f88"].private_ips
  security_groups   = var.network_interfaces["eni_044bd40334f459f88"].security_groups
  source_dest_check = var.network_interfaces["eni_044bd40334f459f88"].source_dest_check
  description       = var.network_interfaces["eni_044bd40334f459f88"].description
  tags              = var.network_interfaces["eni_044bd40334f459f88"].tags
}