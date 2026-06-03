module "iam_instance_profile_ec2_private_runner_role" {
  source = "./modules/iam_instance_profile"

  name = var.iam_instance_profile_ec2_private_runner_role_name
  path = var.iam_instance_profile_ec2_private_runner_role_path
  role = var.iam_instance_profile_ec2_private_runner_role_role
}

module "iam_instance_profile_eks_fece5f1f" {
  source = "./modules/iam_instance_profile"

  name = var.iam_instance_profile_eks_fece5f1f_name
  path = var.iam_instance_profile_eks_fece5f1f_path
  role = var.iam_instance_profile_eks_fece5f1f_role
}

module "iam_instance_profile_sg_private_runner_connector" {
  source = "./modules/iam_instance_profile"

  name = var.iam_instance_profile_sg_private_runner_connector_name
  path = var.iam_instance_profile_sg_private_runner_connector_path
  role = var.iam_instance_profile_sg_private_runner_connector_role
}

module "iam_instance_profile_amazon_ec2_container_service" {
  source = "./modules/iam_instance_profile"

  name = var.iam_instance_profile_amazon_ec2_container_service_name
  path = var.iam_instance_profile_amazon_ec2_container_service_path
  role = var.iam_instance_profile_amazon_ec2_container_service_role
}

module "iam_instance_profile_neha_private_runner" {
  source = "./modules/iam_instance_profile"

  name = var.iam_instance_profile_neha_private_runner_name
  path = var.iam_instance_profile_neha_private_runner_path
  role = var.iam_instance_profile_neha_private_runner_role
}

module "key_pair_private_runner_workshop" {
  source = "./modules/key_pair"

  key_name   = var.key_pair_private_runner_workshop_key_name
  public_key = var.key_pair_private_runner_workshop_public_key
}

module "key_pair_aplattel_private_runner" {
  source = "./modules/key_pair"

  key_name   = var.key_pair_aplattel_private_runner_key_name
  public_key = var.key_pair_aplattel_private_runner_public_key
}

module "key_pair_taher_private_runner" {
  source = "./modules/key_pair"

  key_name   = var.key_pair_taher_private_runner_key_name
  public_key = var.key_pair_taher_private_runner_public_key
}

module "key_pair_ec2_key_k3ehbblq" {
  source = "./modules/key_pair"

  key_name   = var.key_pair_ec2_key_k3ehbblq_key_name
  public_key = var.key_pair_ec2_key_k3ehbblq_public_key
}

module "key_pair_nonprod_euc1" {
  source = "./modules/key_pair"

  key_name   = var.key_pair_nonprod_euc1_key_name
  public_key = var.key_pair_nonprod_euc1_public_key
}

module "key_pair_adis_key_pair" {
  source = "./modules/key_pair"

  key_name   = var.key_pair_adis_key_pair_key_name
  public_key = var.key_pair_adis_key_pair_public_key
}

module "key_pair_ec2_key_16n94g2h" {
  source = "./modules/key_pair"

  key_name   = var.key_pair_ec2_key_16n94g2h_key_name
  public_key = var.key_pair_ec2_key_16n94g2h_public_key
}

module "instance_private_runner_do_not_delete" {
  source = "./modules/instance"

  ami                                  = var.instance_private_runner_do_not_delete_ami
  availability_zone                    = var.instance_private_runner_do_not_delete_availability_zone
  ebs_optimized                        = var.instance_private_runner_do_not_delete_ebs_optimized
  iam_instance_profile                 = module.iam_instance_profile_ec2_private_runner_role.name
  instance_type                        = var.instance_private_runner_do_not_delete_instance_type
  key_name                             = module.key_pair_private_runner_workshop.key_name
  metadata_http_endpoint               = var.instance_private_runner_do_not_delete_metadata_http_endpoint
  metadata_http_protocol_ipv6          = var.instance_private_runner_do_not_delete_metadata_http_protocol_ipv6
  metadata_http_put_response_hop_limit = var.instance_private_runner_do_not_delete_metadata_http_put_response_hop_limit
  metadata_http_tokens                 = var.instance_private_runner_do_not_delete_metadata_http_tokens
  metadata_instance_metadata_tags      = var.instance_private_runner_do_not_delete_metadata_instance_metadata_tags
  monitoring                           = var.instance_private_runner_do_not_delete_monitoring
  source_dest_check                    = var.instance_private_runner_do_not_delete_source_dest_check
  subnet_id                            = var.instance_private_runner_do_not_delete_subnet_id
  tags                                 = var.instance_private_runner_do_not_delete_tags
  tenancy                              = var.instance_private_runner_do_not_delete_tenancy
  vpc_security_group_ids               = var.instance_private_runner_do_not_delete_vpc_security_group_ids
}

module "instance_managed_node" {
  source = "./modules/instance"

  ami                                  = var.instance_managed_node_ami
  availability_zone                    = var.instance_managed_node_availability_zone
  ebs_optimized                        = var.instance_managed_node_ebs_optimized
  iam_instance_profile                 = module.iam_instance_profile_eks_fece5f1f.name
  instance_type                        = var.instance_managed_node_instance_type
  metadata_http_endpoint               = var.instance_managed_node_metadata_http_endpoint
  metadata_http_protocol_ipv6          = var.instance_managed_node_metadata_http_protocol_ipv6
  metadata_http_put_response_hop_limit = var.instance_managed_node_metadata_http_put_response_hop_limit
  metadata_http_tokens                 = var.instance_managed_node_metadata_http_tokens
  metadata_instance_metadata_tags      = var.instance_managed_node_metadata_instance_metadata_tags
  monitoring                           = var.instance_managed_node_monitoring
  source_dest_check                    = var.instance_managed_node_source_dest_check
  subnet_id                            = var.instance_managed_node_subnet_id
  tags                                 = var.instance_managed_node_tags
  tenancy                              = var.instance_managed_node_tenancy
  vpc_security_group_ids               = var.instance_managed_node_vpc_security_group_ids
}

module "instance_aplattel_sg_private_runner" {
  source = "./modules/instance"

  ami                                  = var.instance_aplattel_sg_private_runner_ami
  availability_zone                    = var.instance_aplattel_sg_private_runner_availability_zone
  ebs_optimized                        = var.instance_aplattel_sg_private_runner_ebs_optimized
  iam_instance_profile                 = module.iam_instance_profile_sg_private_runner_connector.name
  instance_type                        = var.instance_aplattel_sg_private_runner_instance_type
  key_name                             = module.key_pair_aplattel_private_runner.key_name
  metadata_http_endpoint               = var.instance_aplattel_sg_private_runner_metadata_http_endpoint
  metadata_http_protocol_ipv6          = var.instance_aplattel_sg_private_runner_metadata_http_protocol_ipv6
  metadata_http_put_response_hop_limit = var.instance_aplattel_sg_private_runner_metadata_http_put_response_hop_limit
  metadata_http_tokens                 = var.instance_aplattel_sg_private_runner_metadata_http_tokens
  metadata_instance_metadata_tags      = var.instance_aplattel_sg_private_runner_metadata_instance_metadata_tags
  monitoring                           = var.instance_aplattel_sg_private_runner_monitoring
  source_dest_check                    = var.instance_aplattel_sg_private_runner_source_dest_check
  subnet_id                            = var.instance_aplattel_sg_private_runner_subnet_id
  tags                                 = var.instance_aplattel_sg_private_runner_tags
  tenancy                              = var.instance_aplattel_sg_private_runner_tenancy
  vpc_security_group_ids               = var.instance_aplattel_sg_private_runner_vpc_security_group_ids
}

module "instance_i_000e597ea8aa8260b" {
  source = "./modules/instance"

  ami                                  = var.instance_i_000e597ea8aa8260b_ami
  availability_zone                    = var.instance_i_000e597ea8aa8260b_availability_zone
  ebs_optimized                        = var.instance_i_000e597ea8aa8260b_ebs_optimized
  instance_type                        = var.instance_i_000e597ea8aa8260b_instance_type
  key_name                             = module.key_pair_taher_private_runner.key_name
  metadata_http_endpoint               = var.instance_i_000e597ea8aa8260b_metadata_http_endpoint
  metadata_http_protocol_ipv6          = var.instance_i_000e597ea8aa8260b_metadata_http_protocol_ipv6
  metadata_http_put_response_hop_limit = var.instance_i_000e597ea8aa8260b_metadata_http_put_response_hop_limit
  metadata_http_tokens                 = var.instance_i_000e597ea8aa8260b_metadata_http_tokens
  metadata_instance_metadata_tags      = var.instance_i_000e597ea8aa8260b_metadata_instance_metadata_tags
  monitoring                           = var.instance_i_000e597ea8aa8260b_monitoring
  source_dest_check                    = var.instance_i_000e597ea8aa8260b_source_dest_check
  subnet_id                            = var.instance_i_000e597ea8aa8260b_subnet_id
  tags                                 = var.instance_i_000e597ea8aa8260b_tags
  tenancy                              = var.instance_i_000e597ea8aa8260b_tenancy
  vpc_security_group_ids               = var.instance_i_000e597ea8aa8260b_vpc_security_group_ids
}

module "instance_i_007e6212f82fd1d38" {
  source = "./modules/instance"

  ami                                  = var.instance_i_007e6212f82fd1d38_ami
  availability_zone                    = var.instance_i_007e6212f82fd1d38_availability_zone
  ebs_optimized                        = var.instance_i_007e6212f82fd1d38_ebs_optimized
  instance_type                        = var.instance_i_007e6212f82fd1d38_instance_type
  key_name                             = var.instance_i_007e6212f82fd1d38_key_name
  metadata_http_endpoint               = var.instance_i_007e6212f82fd1d38_metadata_http_endpoint
  metadata_http_protocol_ipv6          = var.instance_i_007e6212f82fd1d38_metadata_http_protocol_ipv6
  metadata_http_put_response_hop_limit = var.instance_i_007e6212f82fd1d38_metadata_http_put_response_hop_limit
  metadata_http_tokens                 = var.instance_i_007e6212f82fd1d38_metadata_http_tokens
  metadata_instance_metadata_tags      = var.instance_i_007e6212f82fd1d38_metadata_instance_metadata_tags
  monitoring                           = var.instance_i_007e6212f82fd1d38_monitoring
  source_dest_check                    = var.instance_i_007e6212f82fd1d38_source_dest_check
  subnet_id                            = var.instance_i_007e6212f82fd1d38_subnet_id
  tags                                 = var.instance_i_007e6212f82fd1d38_tags
  tenancy                              = var.instance_i_007e6212f82fd1d38_tenancy
  vpc_security_group_ids               = var.instance_i_007e6212f82fd1d38_vpc_security_group_ids
}

module "instance_i_00af4198af591318c" {
  source = "./modules/instance"

  ami                                  = var.instance_i_00af4198af591318c_ami
  availability_zone                    = var.instance_i_00af4198af591318c_availability_zone
  ebs_optimized                        = var.instance_i_00af4198af591318c_ebs_optimized
  instance_type                        = var.instance_i_00af4198af591318c_instance_type
  key_name                             = module.key_pair_ec2_key_k3ehbblq.key_name
  metadata_http_endpoint               = var.instance_i_00af4198af591318c_metadata_http_endpoint
  metadata_http_protocol_ipv6          = var.instance_i_00af4198af591318c_metadata_http_protocol_ipv6
  metadata_http_put_response_hop_limit = var.instance_i_00af4198af591318c_metadata_http_put_response_hop_limit
  metadata_http_tokens                 = var.instance_i_00af4198af591318c_metadata_http_tokens
  metadata_instance_metadata_tags      = var.instance_i_00af4198af591318c_metadata_instance_metadata_tags
  monitoring                           = var.instance_i_00af4198af591318c_monitoring
  source_dest_check                    = var.instance_i_00af4198af591318c_source_dest_check
  subnet_id                            = var.instance_i_00af4198af591318c_subnet_id
  tags                                 = var.instance_i_00af4198af591318c_tags
  tenancy                              = var.instance_i_00af4198af591318c_tenancy
  vpc_security_group_ids               = var.instance_i_00af4198af591318c_vpc_security_group_ids
}

module "instance_ecs_instances_admin_workflow_qa" {
  source = "./modules/instance"

  ami                                  = var.instance_ecs_instances_admin_workflow_qa_ami
  availability_zone                    = var.instance_ecs_instances_admin_workflow_qa_availability_zone
  ebs_optimized                        = var.instance_ecs_instances_admin_workflow_qa_ebs_optimized
  iam_instance_profile                 = module.iam_instance_profile_amazon_ec2_container_service.name
  instance_type                        = var.instance_ecs_instances_admin_workflow_qa_instance_type
  key_name                             = module.key_pair_nonprod_euc1.key_name
  metadata_http_endpoint               = var.instance_ecs_instances_admin_workflow_qa_metadata_http_endpoint
  metadata_http_protocol_ipv6          = var.instance_ecs_instances_admin_workflow_qa_metadata_http_protocol_ipv6
  metadata_http_put_response_hop_limit = var.instance_ecs_instances_admin_workflow_qa_metadata_http_put_response_hop_limit
  metadata_http_tokens                 = var.instance_ecs_instances_admin_workflow_qa_metadata_http_tokens
  metadata_instance_metadata_tags      = var.instance_ecs_instances_admin_workflow_qa_metadata_instance_metadata_tags
  monitoring                           = var.instance_ecs_instances_admin_workflow_qa_monitoring
  source_dest_check                    = var.instance_ecs_instances_admin_workflow_qa_source_dest_check
  subnet_id                            = var.instance_ecs_instances_admin_workflow_qa_subnet_id
  tags                                 = var.instance_ecs_instances_admin_workflow_qa_tags
  tenancy                              = var.instance_ecs_instances_admin_workflow_qa_tenancy
  vpc_security_group_ids               = var.instance_ecs_instances_admin_workflow_qa_vpc_security_group_ids
}

module "instance_taher_private_runner_amz" {
  source = "./modules/instance"

  ami                                  = var.instance_taher_private_runner_amz_ami
  availability_zone                    = var.instance_taher_private_runner_amz_availability_zone
  ebs_optimized                        = var.instance_taher_private_runner_amz_ebs_optimized
  instance_type                        = var.instance_taher_private_runner_amz_instance_type
  key_name                             = module.key_pair_taher_private_runner.key_name
  metadata_http_endpoint               = var.instance_taher_private_runner_amz_metadata_http_endpoint
  metadata_http_protocol_ipv6          = var.instance_taher_private_runner_amz_metadata_http_protocol_ipv6
  metadata_http_put_response_hop_limit = var.instance_taher_private_runner_amz_metadata_http_put_response_hop_limit
  metadata_http_tokens                 = var.instance_taher_private_runner_amz_metadata_http_tokens
  metadata_instance_metadata_tags      = var.instance_taher_private_runner_amz_metadata_instance_metadata_tags
  monitoring                           = var.instance_taher_private_runner_amz_monitoring
  source_dest_check                    = var.instance_taher_private_runner_amz_source_dest_check
  subnet_id                            = var.instance_taher_private_runner_amz_subnet_id
  tags                                 = var.instance_taher_private_runner_amz_tags
  tenancy                              = var.instance_taher_private_runner_amz_tenancy
  vpc_security_group_ids               = var.instance_taher_private_runner_amz_vpc_security_group_ids
}

module "instance_i_015dcccda629ac122" {
  source = "./modules/instance"

  ami                                  = var.instance_i_015dcccda629ac122_ami
  availability_zone                    = var.instance_i_015dcccda629ac122_availability_zone
  ebs_optimized                        = var.instance_i_015dcccda629ac122_ebs_optimized
  instance_type                        = var.instance_i_015dcccda629ac122_instance_type
  key_name                             = var.instance_i_015dcccda629ac122_key_name
  metadata_http_endpoint               = var.instance_i_015dcccda629ac122_metadata_http_endpoint
  metadata_http_protocol_ipv6          = var.instance_i_015dcccda629ac122_metadata_http_protocol_ipv6
  metadata_http_put_response_hop_limit = var.instance_i_015dcccda629ac122_metadata_http_put_response_hop_limit
  metadata_http_tokens                 = var.instance_i_015dcccda629ac122_metadata_http_tokens
  metadata_instance_metadata_tags      = var.instance_i_015dcccda629ac122_metadata_instance_metadata_tags
  monitoring                           = var.instance_i_015dcccda629ac122_monitoring
  source_dest_check                    = var.instance_i_015dcccda629ac122_source_dest_check
  subnet_id                            = var.instance_i_015dcccda629ac122_subnet_id
  tags                                 = var.instance_i_015dcccda629ac122_tags
  tenancy                              = var.instance_i_015dcccda629ac122_tenancy
  vpc_security_group_ids               = var.instance_i_015dcccda629ac122_vpc_security_group_ids
}

module "instance_i_01a58b9fe5e4d0c3c" {
  source = "./modules/instance"

  ami                                  = var.instance_i_01a58b9fe5e4d0c3c_ami
  availability_zone                    = var.instance_i_01a58b9fe5e4d0c3c_availability_zone
  ebs_optimized                        = var.instance_i_01a58b9fe5e4d0c3c_ebs_optimized
  instance_type                        = var.instance_i_01a58b9fe5e4d0c3c_instance_type
  key_name                             = module.key_pair_ec2_key_16n94g2h.key_name
  metadata_http_endpoint               = var.instance_i_01a58b9fe5e4d0c3c_metadata_http_endpoint
  metadata_http_protocol_ipv6          = var.instance_i_01a58b9fe5e4d0c3c_metadata_http_protocol_ipv6
  metadata_http_put_response_hop_limit = var.instance_i_01a58b9fe5e4d0c3c_metadata_http_put_response_hop_limit
  metadata_http_tokens                 = var.instance_i_01a58b9fe5e4d0c3c_metadata_http_tokens
  metadata_instance_metadata_tags      = var.instance_i_01a58b9fe5e4d0c3c_metadata_instance_metadata_tags
  monitoring                           = var.instance_i_01a58b9fe5e4d0c3c_monitoring
  source_dest_check                    = var.instance_i_01a58b9fe5e4d0c3c_source_dest_check
  subnet_id                            = var.instance_i_01a58b9fe5e4d0c3c_subnet_id
  tags                                 = var.instance_i_01a58b9fe5e4d0c3c_tags
  tenancy                              = var.instance_i_01a58b9fe5e4d0c3c_tenancy
  vpc_security_group_ids               = var.instance_i_01a58b9fe5e4d0c3c_vpc_security_group_ids
}

module "instance_privat_runner" {
  source = "./modules/instance"

  ami                                  = var.instance_privat_runner_ami
  availability_zone                    = var.instance_privat_runner_availability_zone
  ebs_optimized                        = var.instance_privat_runner_ebs_optimized
  instance_type                        = var.instance_privat_runner_instance_type
  key_name                             = module.key_pair_nonprod_euc1.key_name
  metadata_http_endpoint               = var.instance_privat_runner_metadata_http_endpoint
  metadata_http_protocol_ipv6          = var.instance_privat_runner_metadata_http_protocol_ipv6
  metadata_http_put_response_hop_limit = var.instance_privat_runner_metadata_http_put_response_hop_limit
  metadata_http_tokens                 = var.instance_privat_runner_metadata_http_tokens
  metadata_instance_metadata_tags      = var.instance_privat_runner_metadata_instance_metadata_tags
  monitoring                           = var.instance_privat_runner_monitoring
  source_dest_check                    = var.instance_privat_runner_source_dest_check
  subnet_id                            = var.instance_privat_runner_subnet_id
  tags                                 = var.instance_privat_runner_tags
  tenancy                              = var.instance_privat_runner_tenancy
  vpc_security_group_ids               = var.instance_privat_runner_vpc_security_group_ids
}

module "instance_neha_private_runner_private_runner_asg" {
  source = "./modules/instance"

  ami                                  = var.instance_neha_private_runner_private_runner_asg_ami
  availability_zone                    = var.instance_neha_private_runner_private_runner_asg_availability_zone
  ebs_optimized                        = var.instance_neha_private_runner_private_runner_asg_ebs_optimized
  iam_instance_profile                 = module.iam_instance_profile_neha_private_runner.name
  instance_type                        = var.instance_neha_private_runner_private_runner_asg_instance_type
  key_name                             = module.key_pair_adis_key_pair.key_name
  metadata_http_endpoint               = var.instance_neha_private_runner_private_runner_asg_metadata_http_endpoint
  metadata_http_protocol_ipv6          = var.instance_neha_private_runner_private_runner_asg_metadata_http_protocol_ipv6
  metadata_http_put_response_hop_limit = var.instance_neha_private_runner_private_runner_asg_metadata_http_put_response_hop_limit
  metadata_http_tokens                 = var.instance_neha_private_runner_private_runner_asg_metadata_http_tokens
  metadata_instance_metadata_tags      = var.instance_neha_private_runner_private_runner_asg_metadata_instance_metadata_tags
  monitoring                           = var.instance_neha_private_runner_private_runner_asg_monitoring
  source_dest_check                    = var.instance_neha_private_runner_private_runner_asg_source_dest_check
  subnet_id                            = var.instance_neha_private_runner_private_runner_asg_subnet_id
  tags                                 = var.instance_neha_private_runner_private_runner_asg_tags
  tenancy                              = var.instance_neha_private_runner_private_runner_asg_tenancy
  vpc_security_group_ids               = var.instance_neha_private_runner_private_runner_asg_vpc_security_group_ids
}

module "instance_demo_org_prepare_release_branch_testing" {
  source = "./modules/instance"

  ami                                  = var.instance_demo_org_prepare_release_branch_testing_ami
  availability_zone                    = var.instance_demo_org_prepare_release_branch_testing_availability_zone
  ebs_optimized                        = var.instance_demo_org_prepare_release_branch_testing_ebs_optimized
  instance_type                        = var.instance_demo_org_prepare_release_branch_testing_instance_type
  key_name                             = module.key_pair_nonprod_euc1.key_name
  metadata_http_endpoint               = var.instance_demo_org_prepare_release_branch_testing_metadata_http_endpoint
  metadata_http_protocol_ipv6          = var.instance_demo_org_prepare_release_branch_testing_metadata_http_protocol_ipv6
  metadata_http_put_response_hop_limit = var.instance_demo_org_prepare_release_branch_testing_metadata_http_put_response_hop_limit
  metadata_http_tokens                 = var.instance_demo_org_prepare_release_branch_testing_metadata_http_tokens
  metadata_instance_metadata_tags      = var.instance_demo_org_prepare_release_branch_testing_metadata_instance_metadata_tags
  monitoring                           = var.instance_demo_org_prepare_release_branch_testing_monitoring
  source_dest_check                    = var.instance_demo_org_prepare_release_branch_testing_source_dest_check
  subnet_id                            = var.instance_demo_org_prepare_release_branch_testing_subnet_id
  tags                                 = var.instance_demo_org_prepare_release_branch_testing_tags
  tenancy                              = var.instance_demo_org_prepare_release_branch_testing_tenancy
  vpc_security_group_ids               = var.instance_demo_org_prepare_release_branch_testing_vpc_security_group_ids
}

module "instance_test_instance" {
  source = "./modules/instance"

  ami                                  = var.instance_test_instance_ami
  availability_zone                    = var.instance_test_instance_availability_zone
  ebs_optimized                        = var.instance_test_instance_ebs_optimized
  instance_type                        = var.instance_test_instance_instance_type
  metadata_http_endpoint               = var.instance_test_instance_metadata_http_endpoint
  metadata_http_protocol_ipv6          = var.instance_test_instance_metadata_http_protocol_ipv6
  metadata_http_put_response_hop_limit = var.instance_test_instance_metadata_http_put_response_hop_limit
  metadata_http_tokens                 = var.instance_test_instance_metadata_http_tokens
  metadata_instance_metadata_tags      = var.instance_test_instance_metadata_instance_metadata_tags
  monitoring                           = var.instance_test_instance_monitoring
  source_dest_check                    = var.instance_test_instance_source_dest_check
  subnet_id                            = var.instance_test_instance_subnet_id
  tags                                 = var.instance_test_instance_tags
  tenancy                              = var.instance_test_instance_tenancy
  vpc_security_group_ids               = var.instance_test_instance_vpc_security_group_ids
}

module "instance_i_02a92f89d43898403" {
  source = "./modules/instance"

  ami                                  = var.instance_i_02a92f89d43898403_ami
  availability_zone                    = var.instance_i_02a92f89d43898403_availability_zone
  ebs_optimized                        = var.instance_i_02a92f89d43898403_ebs_optimized
  instance_type                        = var.instance_i_02a92f89d43898403_instance_type
  key_name                             = var.instance_i_02a92f89d43898403_key_name
  metadata_http_endpoint               = var.instance_i_02a92f89d43898403_metadata_http_endpoint
  metadata_http_protocol_ipv6          = var.instance_i_02a92f89d43898403_metadata_http_protocol_ipv6
  metadata_http_put_response_hop_limit = var.instance_i_02a92f89d43898403_metadata_http_put_response_hop_limit
  metadata_http_tokens                 = var.instance_i_02a92f89d43898403_metadata_http_tokens
  metadata_instance_metadata_tags      = var.instance_i_02a92f89d43898403_metadata_instance_metadata_tags
  monitoring                           = var.instance_i_02a92f89d43898403_monitoring
  source_dest_check                    = var.instance_i_02a92f89d43898403_source_dest_check
  subnet_id                            = var.instance_i_02a92f89d43898403_subnet_id
  tags                                 = var.instance_i_02a92f89d43898403_tags
  tenancy                              = var.instance_i_02a92f89d43898403_tenancy
  vpc_security_group_ids               = var.instance_i_02a92f89d43898403_vpc_security_group_ids
}

module "instance_liveeo_private_replica_debug" {
  source = "./modules/instance"

  ami                                  = var.instance_liveeo_private_replica_debug_ami
  availability_zone                    = var.instance_liveeo_private_replica_debug_availability_zone
  ebs_optimized                        = var.instance_liveeo_private_replica_debug_ebs_optimized
  instance_type                        = var.instance_liveeo_private_replica_debug_instance_type
  key_name                             = module.key_pair_nonprod_euc1.key_name
  metadata_http_endpoint               = var.instance_liveeo_private_replica_debug_metadata_http_endpoint
  metadata_http_protocol_ipv6          = var.instance_liveeo_private_replica_debug_metadata_http_protocol_ipv6
  metadata_http_put_response_hop_limit = var.instance_liveeo_private_replica_debug_metadata_http_put_response_hop_limit
  metadata_http_tokens                 = var.instance_liveeo_private_replica_debug_metadata_http_tokens
  metadata_instance_metadata_tags      = var.instance_liveeo_private_replica_debug_metadata_instance_metadata_tags
  monitoring                           = var.instance_liveeo_private_replica_debug_monitoring
  source_dest_check                    = var.instance_liveeo_private_replica_debug_source_dest_check
  subnet_id                            = var.instance_liveeo_private_replica_debug_subnet_id
  tags                                 = var.instance_liveeo_private_replica_debug_tags
  tenancy                              = var.instance_liveeo_private_replica_debug_tenancy
  vpc_security_group_ids               = var.instance_liveeo_private_replica_debug_vpc_security_group_ids
}

module "instance_i_0312a14319779a1f4" {
  source = "./modules/instance"

  ami                                  = var.instance_i_0312a14319779a1f4_ami
  availability_zone                    = var.instance_i_0312a14319779a1f4_availability_zone
  ebs_optimized                        = var.instance_i_0312a14319779a1f4_ebs_optimized
  instance_type                        = var.instance_i_0312a14319779a1f4_instance_type
  key_name                             = var.instance_i_0312a14319779a1f4_key_name
  metadata_http_endpoint               = var.instance_i_0312a14319779a1f4_metadata_http_endpoint
  metadata_http_protocol_ipv6          = var.instance_i_0312a14319779a1f4_metadata_http_protocol_ipv6
  metadata_http_put_response_hop_limit = var.instance_i_0312a14319779a1f4_metadata_http_put_response_hop_limit
  metadata_http_tokens                 = var.instance_i_0312a14319779a1f4_metadata_http_tokens
  metadata_instance_metadata_tags      = var.instance_i_0312a14319779a1f4_metadata_instance_metadata_tags
  monitoring                           = var.instance_i_0312a14319779a1f4_monitoring
  source_dest_check                    = var.instance_i_0312a14319779a1f4_source_dest_check
  subnet_id                            = var.instance_i_0312a14319779a1f4_subnet_id
  tags                                 = var.instance_i_0312a14319779a1f4_tags
  tenancy                              = var.instance_i_0312a14319779a1f4_tenancy
  vpc_security_group_ids               = var.instance_i_0312a14319779a1f4_vpc_security_group_ids
}

module "network_interface_eni_0ae0ac032fb68be5b" {
  source = "./modules/network_interface"

  description       = var.eni_0ae0ac032fb68be5b_description
  security_groups   = var.eni_0ae0ac032fb68be5b_security_groups
  source_dest_check = var.eni_0ae0ac032fb68be5b_source_dest_check
  subnet_id         = var.eni_0ae0ac032fb68be5b_subnet_id
  tags              = var.eni_0ae0ac032fb68be5b_tags
}

module "network_interface_eni_0766757b2170188e5" {
  source = "./modules/network_interface"

  description       = var.eni_0766757b2170188e5_description
  security_groups   = var.eni_0766757b2170188e5_security_groups
  source_dest_check = var.eni_0766757b2170188e5_source_dest_check
  subnet_id         = var.eni_0766757b2170188e5_subnet_id
  tags              = var.eni_0766757b2170188e5_tags
}

module "network_interface_managed_node" {
  source = "./modules/network_interface"

  description       = var.eni_09fd3101bc163327c_description
  security_groups   = var.eni_09fd3101bc163327c_security_groups
  source_dest_check = var.eni_09fd3101bc163327c_source_dest_check
  subnet_id         = var.eni_09fd3101bc163327c_subnet_id
  tags              = var.eni_09fd3101bc163327c_tags
}

module "network_interface_eni_0ec9413e836fa1cad" {
  source = "./modules/network_interface"

  description       = var.eni_0ec9413e836fa1cad_description
  security_groups   = var.eni_0ec9413e836fa1cad_security_groups
  source_dest_check = var.eni_0ec9413e836fa1cad_source_dest_check
  subnet_id         = var.eni_0ec9413e836fa1cad_subnet_id
  tags              = var.eni_0ec9413e836fa1cad_tags
}

module "network_interface_eni_055ce4572025a47de" {
  source = "./modules/network_interface"

  description       = var.eni_055ce4572025a47de_description
  security_groups   = var.eni_055ce4572025a47de_security_groups
  source_dest_check = var.eni_055ce4572025a47de_source_dest_check
  subnet_id         = var.eni_055ce4572025a47de_subnet_id
  tags              = var.eni_055ce4572025a47de_tags
}

module "network_interface_eni_0bbe8177077664b76" {
  source = "./modules/network_interface"

  description       = var.eni_0bbe8177077664b76_description
  security_groups   = var.eni_0bbe8177077664b76_security_groups
  source_dest_check = var.eni_0bbe8177077664b76_source_dest_check
  subnet_id         = var.eni_0bbe8177077664b76_subnet_id
  tags              = var.eni_0bbe8177077664b76_tags
}

module "network_interface_eni_04c73891734b9a355" {
  source = "./modules/network_interface"

  description       = var.eni_04c73891734b9a355_description
  security_groups   = var.eni_04c73891734b9a355_security_groups
  source_dest_check = var.eni_04c73891734b9a355_source_dest_check
  subnet_id         = var.eni_04c73891734b9a355_subnet_id
  tags              = var.eni_04c73891734b9a355_tags
}

module "network_interface_eni_03f18c266f4ca136e" {
  source = "./modules/network_interface"

  description       = var.eni_03f18c266f4ca136e_description
  security_groups   = var.eni_03f18c266f4ca136e_security_groups
  source_dest_check = var.eni_03f18c266f4ca136e_source_dest_check
  subnet_id         = var.eni_03f18c266f4ca136e_subnet_id
  tags              = var.eni_03f18c266f4ca136e_tags
}

module "network_interface_eni_0cde3d4209449554a" {
  source = "./modules/network_interface"

  description       = var.eni_0cde3d4209449554a_description
  security_groups   = var.eni_0cde3d4209449554a_security_groups
  source_dest_check = var.eni_0cde3d4209449554a_source_dest_check
  subnet_id         = var.eni_0cde3d4209449554a_subnet_id
  tags              = var.eni_0cde3d4209449554a_tags
}

module "network_interface_eni_0611b2f378e918fd0" {
  source = "./modules/network_interface"

  description       = var.eni_0611b2f378e918fd0_description
  security_groups   = var.eni_0611b2f378e918fd0_security_groups
  source_dest_check = var.eni_0611b2f378e918fd0_source_dest_check
  subnet_id         = var.eni_0611b2f378e918fd0_subnet_id
  tags              = var.eni_0611b2f378e918fd0_tags
}

module "network_interface_eni_0419e64531f4b1e19" {
  source = "./modules/network_interface"

  description       = var.eni_0419e64531f4b1e19_description
  security_groups   = var.eni_0419e64531f4b1e19_security_groups
  source_dest_check = var.eni_0419e64531f4b1e19_source_dest_check
  subnet_id         = var.eni_0419e64531f4b1e19_subnet_id
  tags              = var.eni_0419e64531f4b1e19_tags
}

module "network_interface_eni_02228f5c1d152585c" {
  source = "./modules/network_interface"

  description       = var.eni_02228f5c1d152585c_description
  security_groups   = var.eni_02228f5c1d152585c_security_groups
  source_dest_check = var.eni_02228f5c1d152585c_source_dest_check
  subnet_id         = var.eni_02228f5c1d152585c_subnet_id
  tags              = var.eni_02228f5c1d152585c_tags
}

module "network_interface_eni_06111e22ea34335a6" {
  source = "./modules/network_interface"

  description       = var.eni_06111e22ea34335a6_description
  security_groups   = var.eni_06111e22ea34335a6_security_groups
  source_dest_check = var.eni_06111e22ea34335a6_source_dest_check
  subnet_id         = var.eni_06111e22ea34335a6_subnet_id
  tags              = var.eni_06111e22ea34335a6_tags
}

module "network_interface_eni_0a59b1157f1536d50" {
  source = "./modules/network_interface"

  description       = var.eni_0a59b1157f1536d50_description
  security_groups   = var.eni_0a59b1157f1536d50_security_groups
  source_dest_check = var.eni_0a59b1157f1536d50_source_dest_check
  subnet_id         = var.eni_0a59b1157f1536d50_subnet_id
  tags              = var.eni_0a59b1157f1536d50_tags
}

module "network_interface_eni_012b6b714b4087819" {
  source = "./modules/network_interface"

  description       = var.eni_012b6b714b4087819_description
  security_groups   = var.eni_012b6b714b4087819_security_groups
  source_dest_check = var.eni_012b6b714b4087819_source_dest_check
  subnet_id         = var.eni_012b6b714b4087819_subnet_id
  tags              = var.eni_012b6b714b4087819_tags
}

module "network_interface_eni_0d738514adbd9a62b" {
  source = "./modules/network_interface"

  description       = var.eni_0d738514adbd9a62b_description
  security_groups   = var.eni_0d738514adbd9a62b_security_groups
  source_dest_check = var.eni_0d738514adbd9a62b_source_dest_check
  subnet_id         = var.eni_0d738514adbd9a62b_subnet_id
  tags              = var.eni_0d738514adbd9a62b_tags
}

module "network_interface_eni_0acba230c9dc664c3" {
  source = "./modules/network_interface"

  description       = var.eni_0acba230c9dc664c3_description
  security_groups   = var.eni_0acba230c9dc664c3_security_groups
  source_dest_check = var.eni_0acba230c9dc664c3_source_dest_check
  subnet_id         = var.eni_0acba230c9dc664c3_subnet_id
  tags              = var.eni_0acba230c9dc664c3_tags
}

module "network_interface_eni_044bd40334f459f88" {
  source = "./modules/network_interface"

  description       = var.eni_044bd40334f459f88_description
  security_groups   = var.eni_044bd40334f459f88_security_groups
  source_dest_check = var.eni_044bd40334f459f88_source_dest_check
  subnet_id         = var.eni_044bd40334f459f88_subnet_id
  tags              = var.eni_044bd40334f459f88_tags
}