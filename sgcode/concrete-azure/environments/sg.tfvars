region = "eu-central-1"

# IAM Instance Profiles
iam_instance_profile_ec2_private_runner_role_name = "ec2_private_runner_role"
iam_instance_profile_ec2_private_runner_role_path = "/"
iam_instance_profile_ec2_private_runner_role_role = "ec2_private_runner_role"

iam_instance_profile_amazon_ec2_container_service_name = "AmazonEC2ContainerServiceforEC2Role"
iam_instance_profile_amazon_ec2_container_service_path = "/"
iam_instance_profile_amazon_ec2_container_service_role = "AmazonEC2ContainerServiceforEC2Role"

iam_instance_profile_eks_fece5f1f_name = "eks-fece5f1f-94cc-37f3-cca2-2de45fbc88e4"
iam_instance_profile_eks_fece5f1f_path = "/"
iam_instance_profile_eks_fece5f1f_role = "managed-node-eks-node-group-20260305134529526900000001"

iam_instance_profile_sg_private_runner_connector_name = "sg-private-runner-connector"
iam_instance_profile_sg_private_runner_connector_path = "/"
iam_instance_profile_sg_private_runner_connector_role = "sg-private-runner-connector"

iam_instance_profile_neha_private_runner_name = "Neha_Private_Runner-runner-instance-profile"
iam_instance_profile_neha_private_runner_path = "/"
iam_instance_profile_neha_private_runner_role = "Neha_Private_Runner-ec2-private-runner-role"

# Key Pairs
key_pair_private_runner_workshop_key_name  = "private-runner-workshop"
key_pair_private_runner_workshop_public_key = ""

key_pair_nonprod_euc1_key_name  = "nonprod-euc1"
key_pair_nonprod_euc1_public_key = ""

key_pair_taher_private_runner_key_name  = "taher-private-runner"
key_pair_taher_private_runner_public_key = ""

key_pair_aplattel_private_runner_key_name  = "aplattel-private-runner"
key_pair_aplattel_private_runner_public_key = ""

key_pair_ec2_key_k3ehbblq_key_name  = "ec2-key-k3ehbblq"
key_pair_ec2_key_k3ehbblq_public_key = ""

key_pair_ec2_key_ss7d1dui_key_name  = "ec2-key-ss7d1dui"
key_pair_ec2_key_ss7d1dui_public_key = ""

key_pair_ec2_key_16n94g2h_key_name  = "ec2-key-16n94g2h"
key_pair_ec2_key_16n94g2h_public_key = ""

key_pair_adis_key_pair_key_name  = "adis-key-pair"
key_pair_adis_key_pair_public_key = ""

# Instance: private-runner-do-not-delete
instance_private_runner_do_not_delete_ami_id                               = "ami-04f9a173520f395dd"
instance_private_runner_do_not_delete_instance_type                        = "t2.large"
instance_private_runner_do_not_delete_subnet_id                            = "subnet-064f42dced8666a63"
instance_private_runner_do_not_delete_vpc_security_group_ids               = ["sg-0adb3e09fe11a19a1"]
instance_private_runner_do_not_delete_availability_zone                    = "eu-central-1a"
instance_private_runner_do_not_delete_source_dest_check                    = true
instance_private_runner_do_not_delete_tenancy                              = "default"
instance_private_runner_do_not_delete_monitoring                           = false
instance_private_runner_do_not_delete_metadata_http_endpoint               = "enabled"
instance_private_runner_do_not_delete_metadata_http_tokens                 = "required"
instance_private_runner_do_not_delete_metadata_http_put_response_hop_limit = 2
instance_private_runner_do_not_delete_metadata_http_protocol_ipv6          = "disabled"
instance_private_runner_do_not_delete_metadata_instance_metadata_tags      = "disabled"
instance_private_runner_do_not_delete_tags                                 = { Name = "private-runner-do-not-delete" }

# Instance: ecs-instances-admin-workflow-qa
instance_ecs_instances_admin_workflow_qa_ami_id                               = "ami-0f37a3fdaaaf3661e"
instance_ecs_instances_admin_workflow_qa_instance_type                        = "t2.medium"
instance_ecs_instances_admin_workflow_qa_subnet_id                            = "subnet-072669658da496c4a"
instance_ecs_instances_admin_workflow_qa_vpc_security_group_ids               = ["sg-064cbb231ba1bca24"]
instance_ecs_instances_admin_workflow_qa_availability_zone                    = "eu-central-1a"
instance_ecs_instances_admin_workflow_qa_source_dest_check                    = true
instance_ecs_instances_admin_workflow_qa_tenancy                              = "default"
instance_ecs_instances_admin_workflow_qa_monitoring                           = false
instance_ecs_instances_admin_workflow_qa_metadata_http_endpoint               = "enabled"
instance_ecs_instances_admin_workflow_qa_metadata_http_tokens                 = "optional"
instance_ecs_instances_admin_workflow_qa_metadata_http_put_response_hop_limit = 1
instance_ecs_instances_admin_workflow_qa_metadata_http_protocol_ipv6          = "disabled"
instance_ecs_instances_admin_workflow_qa_metadata_instance_metadata_tags      = "disabled"
instance_ecs_instances_admin_workflow_qa_tags = {
  "aws:autoscaling:groupName"    = "ecs-instances-admin-workflow-qa"
  "Resource-Type"                = "nonprod"
  "aws:ec2launchtemplate:version" = "10"
  "aws:ec2launchtemplate:id"     = "lt-0f212ff506c4e1680"
  "Name"                         = "ecs-instances-admin-workflow-qa"
}

# Instance: managed-node
instance_managed_node_ami_id                               = "ami-027ceff350abb2819"
instance_managed_node_instance_type                        = "t3.medium"
instance_managed_node_subnet_id                            = "subnet-083c90a8048614a76"
instance_managed_node_vpc_security_group_ids               = ["sg-02208ae357c6f1a58"]
instance_managed_node_key_name                             = ""
instance_managed_node_availability_zone                    = "eu-central-1b"
instance_managed_node_source_dest_check                    = true
instance_managed_node_tenancy                              = "default"
instance_managed_node_monitoring                           = true
instance_managed_node_metadata_http_endpoint               = "enabled"
instance_managed_node_metadata_http_tokens                 = "required"
instance_managed_node_metadata_http_put_response_hop_limit = 2
instance_managed_node_metadata_http_protocol_ipv6          = "disabled"
instance_managed_node_metadata_instance_metadata_tags      = "disabled"
instance_managed_node_tags = {
  "aws:autoscaling:groupName"      = "eks-managed-node-20260305134536297600000007-fece5f1f-94cc-37f3-cca2-2de45fbc88e4"
  "aws:ec2:fleet-id"               = "fleet-10bd0296-85ae-4ca7-061a-238a12adfc11"
  "k8s.io/cluster-autoscaler/eks-ms" = "owned"
  "kubernetes.io/cluster/eks-ms"   = "owned"
  "aws:eks:cluster-name"           = "eks-ms"
  "eks:cluster-name"               = "eks-ms"
  "aws:ec2launchtemplate:version"  = "1"
  "eks:nodegroup-name"             = "managed-node-20260305134536297600000007"
  "k8s.io/cluster-autoscaler/enabled" = "true"
  "aws:ec2launchtemplate:id"       = "lt-0f9cc5046868cfc14"
  "Name"                           = "managed-node"
}

# Instance: privat-runner
instance_privat_runner_ami_id                               = "ami-081d42a282b78e6d3"
instance_privat_runner_instance_type                        = "t2.large"
instance_privat_runner_subnet_id                            = "subnet-072669658da496c4a"
instance_privat_runner_vpc_security_group_ids               = ["sg-064cbb231ba1bca24"]
instance_privat_runner_iam_instance_profile                 = ""
instance_privat_runner_availability_zone                    = "eu-central-1a"
instance_privat_runner_source_dest_check                    = true
instance_privat_runner_tenancy                              = "default"
instance_privat_runner_monitoring                           = false
instance_privat_runner_metadata_http_endpoint               = "enabled"
instance_privat_runner_metadata_http_tokens                 = "optional"
instance_privat_runner_metadata_http_put_response_hop_limit = 1
instance_privat_runner_metadata_http_protocol_ipv6          = "disabled"
instance_privat_runner_metadata_instance_metadata_tags      = "disabled"
instance_privat_runner_tags                                 = { Name = "privat-runner" }

# Instance: liveeo-private-replica-debug
instance_liveeo_private_replica_debug_ami_id                               = "ami-081d42a282b78e6d3"
instance_liveeo_private_replica_debug_instance_type                        = "t2.micro"
instance_liveeo_private_replica_debug_subnet_id                            = "subnet-072669658da496c4a"
instance_liveeo_private_replica_debug_vpc_security_group_ids               = ["sg-064cbb231ba1bca24"]
instance_liveeo_private_replica_debug_iam_instance_profile                 = ""
instance_liveeo_private_replica_debug_availability_zone                    = "eu-central-1a"
instance_liveeo_private_replica_debug_source_dest_check                    = true
instance_liveeo_private_replica_debug_tenancy                              = "default"
instance_liveeo_private_replica_debug_monitoring                           = false
instance_liveeo_private_replica_debug_metadata_http_endpoint               = "enabled"
instance_liveeo_private_replica_debug_metadata_http_tokens                 = "optional"
instance_liveeo_private_replica_debug_metadata_http_put_response_hop_limit = 1
instance_liveeo_private_replica_debug_metadata_http_protocol_ipv6          = "disabled"
instance_liveeo_private_replica_debug_metadata_instance_metadata_tags      = "disabled"
instance_liveeo_private_replica_debug_tags                                 = { Name = "liveeo-private-replica-debug" }

# Instance: i-0334fc9f1f177c10f
instance_i_0334fc9f1f177c10f_ami_id                               = "ami-0a628e1e89aaedf80"
instance_i_0334fc9f1f177c10f_instance_type                        = "t2.micro"
instance_i_0334fc9f1f177c10f_subnet_id                            = "subnet-02aff1dbfda577bb1"
instance_i_0334fc9f1f177c10f_vpc_security_group_ids               = ["sg-044ac122a34980d84"]
instance_i_0334fc9f1f177c10f_iam_instance_profile                 = ""
instance_i_0334fc9f1f177c10f_availability_zone                    = "eu-central-1a"
instance_i_0334fc9f1f177c10f_source_dest_check                    = true
instance_i_0334fc9f1f177c10f_tenancy                              = "default"
instance_i_0334fc9f1f177c10f_monitoring                           = false
instance_i_0334fc9f1f177c10f_metadata_http_endpoint               = "enabled"
instance_i_0334fc9f1f177c10f_metadata_http_tokens                 = "required"
instance_i_0334fc9f1f177c10f_metadata_http_put_response_hop_limit = 2
instance_i_0334fc9f1f177c10f_metadata_http_protocol_ipv6          = "disabled"
instance_i_0334fc9f1f177c10f_metadata_instance_metadata_tags      = "disabled"
instance_i_0334fc9f1f177c10f_tags                                 = {}

# Instance: demo-org-prepare-release-branch-testing
instance_demo_org_prepare_release_branch_testing_ami_id                               = "ami-0281e3f1612a178c5"
instance_demo_org_prepare_release_branch_testing_instance_type                        = "t2.medium"
instance_demo_org_prepare_release_branch_testing_subnet_id                            = "subnet-06293819030751560"
instance_demo_org_prepare_release_branch_testing_vpc_security_group_ids               = ["sg-064cbb231ba1bca24"]
instance_demo_org_prepare_release_branch_testing_iam_instance_profile                 = ""
instance_demo_org_prepare_release_branch_testing_availability_zone                    = "eu-central-1b"
instance_demo_org_prepare_release_branch_testing_source_dest_check                    = true
instance_demo_org_prepare_release_branch_testing_tenancy                              = "default"
instance_demo_org_prepare_release_branch_testing_monitoring                           = false
instance_demo_org_prepare_release_branch_testing_metadata_http_endpoint               = "enabled"
instance_demo_org_prepare_release_branch_testing_metadata_http_tokens                 = "required"
instance_demo_org_prepare_release_branch_testing_metadata_http_put_response_hop_limit = 2
instance_demo_org_prepare_release_branch_testing_metadata_http_protocol_ipv6          = "disabled"
instance_demo_org_prepare_release_branch_testing_metadata_instance_metadata_tags      = "disabled"
instance_demo_org_prepare_release_branch_testing_tags                                 = { Name = "demo-org-prepare-release-branch-testing" }

# Instance: taher-private-runner-amz
instance_taher_private_runner_amz_ami_id                               = "ami-0b74f796d330ab49c"
instance_taher_private_runner_amz_instance_type                        = "t2.medium"
instance_taher_private_runner_amz_subnet_id                            = "subnet-072669658da496c4a"
instance_taher_private_runner_amz_vpc_security_group_ids               = ["sg-092a5ff991a0802bc"]
instance_taher_private_runner_amz_iam_instance_profile                 = ""
instance_taher_private_runner_amz_availability_zone                    = "eu-central-1a"
instance_taher_private_runner_amz_source_dest_check                    = true
instance_taher_private_runner_amz_tenancy                              = "default"
instance_taher_private_runner_amz_monitoring                           = false
instance_taher_private_runner_amz_metadata_http_endpoint               = "enabled"
instance_taher_private_runner_amz_metadata_http_tokens                 = "required"
instance_taher_private_runner_amz_metadata_http_put_response_hop_limit = 2
instance_taher_private_runner_amz_metadata_http_protocol_ipv6          = "disabled"
instance_taher_private_runner_amz_metadata_instance_metadata_tags      = "disabled"
instance_taher_private_runner_amz_tags                                 = { Name = "taher-private-runner-amz" }

# Instance: aplattel-sg-private-runner
instance_aplattel_sg_private_runner_ami_id                               = "ami-0157af9aea2eef346"
instance_aplattel_sg_private_runner_instance_type                        = "t2.medium"
instance_aplattel_sg_private_runner_subnet_id                            = "subnet-0029ac825e009c664"
instance_aplattel_sg_private_runner_vpc_security_group_ids               = ["sg-00bd4bcd7401c8585"]
instance_aplattel_sg_private_runner_availability_zone                    = "us-east-1c"
instance_aplattel_sg_private_runner_source_dest_check                    = true
instance_aplattel_sg_private_runner_tenancy                              = "default"
instance_aplattel_sg_private_runner_monitoring                           = false
instance_aplattel_sg_private_runner_metadata_http_endpoint               = "enabled"
instance_aplattel_sg_private_runner_metadata_http_tokens                 = "required"
instance_aplattel_sg_private_runner_metadata_http_put_response_hop_limit = 2
instance_aplattel_sg_private_runner_metadata_http_protocol_ipv6          = "disabled"
instance_aplattel_sg_private_runner_metadata_instance_metadata_tags      = "disabled"
instance_aplattel_sg_private_runner_tags                                 = { Name = "aplattel-sg-private-runner" }

# Instance: i-000e597ea8aa8260b
instance_i_000e597ea8aa8260b_ami_id                               = "ami-03074cc1b166e8691"
instance_i_000e597ea8aa8260b_instance_type                        = "t2.medium"
instance_i_000e597ea8aa8260b_subnet_id                            = "subnet-072669658da496c4a"
instance_i_000e597ea8aa8260b_vpc_security_group_ids               = ["sg-0d5bf7aeaa53bfb92"]
instance_i_000e597ea8aa8260b_iam_instance_profile                 = ""
instance_i_000e597ea8aa8260b_availability_zone                    = "eu-central-1a"
instance_i_000e597ea8aa8260b_source_dest_check                    = true
instance_i_000e597ea8aa8260b_tenancy                              = "default"
instance_i_000e597ea8aa8260b_monitoring                           = false
instance_i_000e597ea8aa8260b_metadata_http_endpoint               = "enabled"
instance_i_000e597ea8aa8260b_metadata_http_tokens                 = "required"
instance_i_000e597ea8aa8260b_metadata_http_put_response_hop_limit = 2
instance_i_000e597ea8aa8260b_metadata_http_protocol_ipv6          = "disabled"
instance_i_000e597ea8aa8260b_metadata_instance_metadata_tags      = "disabled"
instance_i_000e597ea8aa8260b_tags                                 = {}

# Instance: i-007e6212f82fd1d38
instance_i_007e6212f82fd1d38_ami_id                               = "ami-0242293c1166ee926"
instance_i_007e6212f82fd1d38_instance_type                        = "t3.medium"
instance_i_007e6212f82fd1d38_subnet_id                            = "subnet-0b77c0d76befaf70d"
instance_i_007e6212f82fd1d38_vpc_security_group_ids               = ["sg-04211bd5ce13e32c0"]
instance_i_007e6212f82fd1d38_key_name                             = "packer_68c879f2-1468-642a-6776-a06c2a3c37fc"
instance_i_007e6212f82fd1d38_iam_instance_profile                 = ""
instance_i_007e6212f82fd1d38_availability_zone                    = "eu-central-1a"
instance_i_007e6212f82fd1d38_source_dest_check                    = true
instance_i_007e6212f82fd1d38_tenancy                              = "default"
instance_i_007e6212f82fd1d38_monitoring                           = false
instance_i_007e6212f82fd1d38_metadata_http_endpoint               = "enabled"
instance_i_007e6212f82fd1d38_metadata_http_tokens                 = "optional"
instance_i_007e6212f82fd1d38_metadata_http_put_response_hop_limit = 1
instance_i_007e6212f82fd1d38_metadata_http_protocol_ipv6          = "disabled"
instance_i_007e6212f82fd1d38_metadata_instance_metadata_tags      = "disabled"
instance_i_007e6212f82fd1d38_tags                                 = {}

# Instance: i-00af4198af591318c
instance_i_00af4198af591318c_ami_id                               = "ami-01b5c3cf789dbf1fb"
instance_i_00af4198af591318c_instance_type                        = "t3.micro"
instance_i_00af4198af591318c_subnet_id                            = "subnet-0b77c0d76befaf70d"
instance_i_00af4198af591318c_vpc_security_group_ids               = ["sg-0373ac5706eeaf25d"]
instance_i_00af4198af591318c_iam_instance_profile                 = ""
instance_i_00af4198af591318c_availability_zone                    = "eu-central-1a"
instance_i_00af4198af591318c_source_dest_check                    = true
instance_i_00af4198af591318c_tenancy                              = "default"
instance_i_00af4198af591318c_monitoring                           = false
instance_i_00af4198af591318c_metadata_http_endpoint               = "enabled"
instance_i_00af4198af591318c_metadata_http_tokens                 = "optional"
instance_i_00af4198af591318c_metadata_http_put_response_hop_limit = 1
instance_i_00af4198af591318c_metadata_http_protocol_ipv6          = "disabled"
instance_i_00af4198af591318c_metadata_instance_metadata_tags      = "disabled"
instance_i_00af4198af591318c_tags                                 = {}

# Instance: i-015dcccda629ac122
instance_i_015dcccda629ac122_ami_id                               = "ami-074dd8e8dac7651a5"
instance_i_015dcccda629ac122_instance_type                        = "t3.micro"
instance_i_015dcccda629ac122_subnet_id                            = "subnet-0b77c0d76befaf70d"
instance_i_015dcccda629ac122_vpc_security_group_ids               = ["sg-057053456dac1810d"]
instance_i_015dcccda629ac122_key_name                             = "ec2-key-thz89qha"
instance_i_015dcccda629ac122_iam_instance_profile                 = ""
instance_i_015dcccda629ac122_availability_zone                    = "eu-central-1a"
instance_i_015dcccda629ac122_source_dest_check                    = true
instance_i_015dcccda629ac122_tenancy                              = "default"
instance_i_015dcccda629ac122_monitoring                           = false
instance_i_015dcccda629ac122_metadata_http_endpoint               = "enabled"
instance_i_015dcccda629ac122_metadata_http_tokens                 = "optional"
instance_i_015dcccda629ac122_metadata_http_put_response_hop_limit = 1
instance_i_015dcccda629ac122_metadata_http_protocol_ipv6          = "disabled"
instance_i_015dcccda629ac122_metadata_instance_metadata_tags      = "disabled"
instance_i_015dcccda629ac122_tags                                 = {}

# Instance: test-instance
instance_test_instance_ami_id                               = "ami-09042b2f6d07d164a"
instance_test_instance_instance_type                        = "t3.micro"
instance_test_instance_subnet_id                            = "subnet-0adeb216161049cca"
instance_test_instance_vpc_security_group_ids               = ["sg-064cbb231ba1bca24"]
instance_test_instance_key_name                             = ""
instance_test_instance_iam_instance_profile                 = ""
instance_test_instance_availability_zone                    = "eu-central-1a"
instance_test_instance_source_dest_check                    = true
instance_test_instance_tenancy                              = "default"
instance_test_instance_monitoring                           = false
instance_test_instance_metadata_http_endpoint               = "enabled"
instance_test_instance_metadata_http_tokens                 = "optional"
instance_test_instance_metadata_http_put_response_hop_limit = 1
instance_test_instance_metadata_http_protocol_ipv6          = "disabled"
instance_test_instance_metadata_instance_metadata_tags      = "disabled"
instance_test_instance_tags                                 = { Name = "test-instance" }

# Instance: private-runner
instance_private_runner_ami_id                               = "ami-07151644aeb34558a"
instance_private_runner_instance_type                        = "t2.micro"
instance_private_runner_subnet_id                            = "subnet-06293819030751560"
instance_private_runner_vpc_security_group_ids               = ["sg-0dacf832674ce91d3"]
instance_private_runner_iam_instance_profile                 = ""
instance_private_runner_availability_zone                    = "eu-central-1b"
instance_private_runner_source_dest_check                    = true
instance_private_runner_tenancy                              = "default"
instance_private_runner_monitoring                           = false
instance_private_runner_metadata_http_endpoint               = "enabled"
instance_private_runner_metadata_http_tokens                 = "required"
instance_private_runner_metadata_http_put_response_hop_limit = 2
instance_private_runner_metadata_http_protocol_ipv6          = "disabled"
instance_private_runner_metadata_instance_metadata_tags      = "disabled"
instance_private_runner_tags                                 = { Name = "private-runner" }

# Instance: i-0439c48efdf4ad956
instance_i_0439c48efdf4ad956_ami_id                               = "ami-027066fb16fc18634"
instance_i_0439c48efdf4ad956_instance_type                        = "t3.micro"
instance_i_0439c48efdf4ad956_subnet_id                            = "subnet-0b77c0d76befaf70d"
instance_i_0439c48efdf4ad956_vpc_security_group_ids               = ["sg-046e1d25a31f2da72"]
instance_i_0439c48efdf4ad956_iam_instance_profile                 = ""
instance_i_0439c48efdf4ad956_availability_zone                    = "eu-central-1a"
instance_i_0439c48efdf4ad956_source_dest_check                    = true
instance_i_0439c48efdf4ad956_tenancy                              = "default"
instance_i_0439c48efdf4ad956_monitoring                           = false
instance_i_0439c48efdf4ad956_metadata_http_endpoint               = "enabled"
instance_i_0439c48efdf4ad956_metadata_http_tokens                 = "optional"
instance_i_0439c48efdf4ad956_metadata_http_put_response_hop_limit = 1
instance_i_0439c48efdf4ad956_metadata_http_protocol_ipv6          = "disabled"
instance_i_0439c48efdf4ad956_metadata_instance_metadata_tags      = "disabled"
instance_i_0439c48efdf4ad956_tags                                 = {}

# Instance: i-01a58b9fe5e4d0c3c
instance_i_01a58b9fe5e4d0c3c_ami_id                               = "ami-027066fb16fc18634"
instance_i_01a58b9fe5e4d0c3c_instance_type                        = "t3.micro"
instance_i_01a58b9fe5e4d0c3c_subnet_id                            = "subnet-0b77c0d76befaf70d"
instance_i_01a58b9fe5e4d0c3c_vpc_security_group_ids               = ["sg-0d603d8148b0d5ac9"]
instance_i_01a58b9fe5e4d0c3c_iam_instance_profile                 = ""
instance_i_01a58b9fe5e4d0c3c_availability_zone                    = "eu-central-1a"
instance_i_01a58b9fe5e4d0c3c_source_dest_check                    = true
instance_i_01a58b9fe5e4d0c3c_tenancy                              = "default"
instance_i_01a58b9fe5e4d0c3c_monitoring                           = false
instance_i_01a58b9fe5e4d0c3c_metadata_http_endpoint               = "enabled"
instance_i_01a58b9fe5e4d0c3c_metadata_http_tokens                 = "optional"
instance_i_01a58b9fe5e4d0c3c_metadata_http_put_response_hop_limit = 1
instance_i_01a58b9fe5e4d0c3c_metadata_http_protocol_ipv6          = "disabled"
instance_i_01a58b9fe5e4d0c3c_metadata_instance_metadata_tags      = "disabled"
instance_i_01a58b9fe5e4d0c3c_tags                                 = {}

# Instance: Neha_Private_Runner-private-runner-asg
instance_neha_private_runner_private_runner_asg_ami_id                               = "ami-0f54161e67ab29dae"
instance_neha_private_runner_private_runner_asg_instance_type                        = "t3.medium"
instance_neha_private_runner_private_runner_asg_subnet_id                            = "subnet-0b77c0d76befaf70d"
instance_neha_private_runner_private_runner_asg_vpc_security_group_ids               = ["sg-03743e5fa85c19e63"]
instance_neha_private_runner_private_runner_asg_availability_zone                    = "eu-central-1a"
instance_neha_private_runner_private_runner_asg_source_dest_check                    = true
instance_neha_private_runner_private_runner_asg_tenancy                              = "default"
instance_neha_private_runner_private_runner_asg_monitoring                           = false
instance_neha_private_runner_private_runner_asg_metadata_http_endpoint               = "enabled"
instance_neha_private_runner_private_runner_asg_metadata_http_tokens                 = "required"
instance_neha_private_runner_private_runner_asg_metadata_http_put_response_hop_limit = 2
instance_neha_private_runner_private_runner_asg_metadata_http_protocol_ipv6          = "disabled"
instance_neha_private_runner_private_runner_asg_metadata_instance_metadata_tags      = "disabled"
instance_neha_private_runner_private_runner_asg_tags = {
  "aws:autoscaling:groupName"      = "Neha_Private_Runner-private-runner-asg"
  "aws:ec2launchtemplate:version"  = "3"
  "aws:ec2launchtemplate:id"       = "lt-04a98ee86f4d3061b"
  "Name"                           = "Neha_Private_Runner-private-runner-asg"
}

# Instance: i-02a92f89d43898403
instance_i_02a92f89d43898403_ami_id                               = "ami-03b7a7ce915b46b75"
instance_i_02a92f89d43898403_instance_type                        = "t3.medium"
instance_i_02a92f89d43898403_subnet_id                            = "subnet-0b77c0d76befaf70d"
instance_i_02a92f89d43898403_vpc_security_group_ids               = ["sg-04fe9eb743c23145a"]
instance_i_02a92f89d43898403_key_name                             = "ec2-key-09a43dgt"
instance_i_02a92f89d43898403_iam_instance_profile                 = ""
instance_i_02a92f89d43898403_availability_zone                    = "eu-central-1a"
instance_i_02a92f89d43898403_source_dest_check                    = true
instance_i_02a92f89d43898403_tenancy                              = "default"
instance_i_02a92f89d43898403_monitoring                           = false
instance_i_02a92f89d43898403_metadata_http_endpoint               = "enabled"
instance_i_02a92f89d43898403_metadata_http_tokens                 = "optional"
instance_i_02a92f89d43898403_metadata_http_put_response_hop_limit = 1
instance_i_02a92f89d43898403_metadata_http_protocol_ipv6          = "disabled"
instance_i_02a92f89d43898403_metadata_instance_metadata_tags      = "disabled"
instance_i_02a92f89d43898403_tags                                 = {}

# Network Interfaces
eni_0ae0ac032fb68be5b_subnet_id         = "subnet-064f42dced8666a63"
eni_0ae0ac032fb68be5b_security_groups   = ["sg-0adb3e09fe11a19a1"]
eni_0ae0ac032fb68be5b_source_dest_check = true
eni_0ae0ac032fb68be5b_description       = ""
eni_0ae0ac032fb68be5b_tags              = {}

eni_03f18c266f4ca136e_subnet_id         = "subnet-072669658da496c4a"
eni_03f18c266f4ca136e_security_groups   = ["sg-064cbb231ba1bca24"]
eni_03f18c266f4ca136e_source_dest_check = true
eni_03f18c266f4ca136e_description       = ""
eni_03f18c266f4ca136e_tags              = { "Resource-Type" = "nonprod" }

eni_0766757b2170188e5_subnet_id         = "subnet-083c90a8048614a76"
eni_0766757b2170188e5_security_groups   = ["sg-02208ae357c6f1a58"]
eni_0766757b2170188e5_source_dest_check = true
eni_0766757b2170188e5_description       = "aws-K8S-i-0b86bd1d36a4864dd"
eni_0766757b2170188e5_tags = {
  "eks:eni:owner"                          = "amazon-vpc-cni"
  "node.k8s.amazonaws.com/instance_id"     = "i-0b86bd1d36a4864dd"
  "node.k8s.amazonaws.com/createdAt"       = "2026-03-05T13:47:02Z"
  "cluster.k8s.amazonaws.com/name"         = "eks-ms"
}

eni_09fd3101bc163327c_subnet_id         = "subnet-083c90a8048614a76"
eni_09fd3101bc163327c_security_groups   = ["sg-02208ae357c6f1a58"]
eni_09fd3101bc163327c_source_dest_check = true
eni_09fd3101bc163327c_description       = ""
eni_09fd3101bc163327c_tags = {
  "eks:eni:owner"                          = "amazon-vpc-cni"
  "node.k8s.amazonaws.com/instance_id"     = "i-0b86bd1d36a4864dd"
  "cluster.k8s.amazonaws.com/name"         = "eks-ms"
  "eks:cluster-name"                       = "eks-ms"
  "eks:nodegroup-name"                     = "managed-node-20260305134536297600000007"
  "Name"                                   = "managed-node"
}

eni_02228f5c1d152585c_subnet_id         = "subnet-072669658da496c4a"
eni_02228f5c1d152585c_security_groups   = ["sg-064cbb231ba1bca24"]
eni_02228f5c1d152585c_source_dest_check = true
eni_02228f5c1d152585c_description       = ""
eni_02228f5c1d152585c_tags              = {}

eni_0acba230c9dc664c3_subnet_id         = "subnet-072669658da496c4a"
eni_0acba230c9dc664c3_security_groups   = ["sg-064cbb231ba1bca24"]
eni_0acba230c9dc664c3_source_dest_check = true
eni_0acba230c9dc664c3_description       = ""
eni_0acba230c9dc664c3_tags              = {}

eni_0813c9b2d7953c6a0_subnet_id         = "subnet-02aff1dbfda577bb1"
eni_0813c9b2d7953c6a0_security_groups   = ["sg-044ac122a34980d84"]
eni_0813c9b2d7953c6a0_source_dest_check = true
eni_0813c9b2d7953c6a0_description       = ""
eni_0813c9b2d7953c6a0_tags              = {}

eni_0a59b1157f1536d50_subnet_id         = "subnet-06293819030751560"
eni_0a59b1157f1536d50_security_groups   = ["sg-064cbb231ba1bca24"]
eni_0a59b1157f1536d50_source_dest_check = true
eni_0a59b1157f1536d50_description       = ""
eni_0a59b1157f1536d50_tags              = {}

eni_0cde3d4209449554a_subnet_id         = "subnet-072669658da496c4a"
eni_0cde3d4209449554a_security_groups   = ["sg-092a5ff991a0802bc"]
eni_0cde3d4209449554a_source_dest_check = true
eni_0cde3d4209449554a_description       = ""
eni_0cde3d4209449554a_tags              = {}

eni_0ec9413e836fa1cad_subnet_id         = "subnet-0029ac825e009c664"
eni_0ec9413e836fa1cad_security_groups   = ["sg-00bd4bcd7401c8585"]
eni_0ec9413e836fa1cad_source_dest_check = true
eni_0ec9413e836fa1cad_description       = ""
eni_0ec9413e836fa1cad_tags              = {}

eni_055ce4572025a47de_subnet_id         = "subnet-072669658da496c4a"
eni_055ce4572025a47de_security_groups   = ["sg-0d5bf7aeaa53bfb92"]
eni_055ce4572025a47de_source_dest_check = true
eni_055ce4572025a47de_description       = ""
eni_055ce4572025a47de_tags              = {}

eni_0bbe8177077664b76_subnet_id         = "subnet-0b77c0d76befaf70d"
eni_0bbe8177077664b76_security_groups   = ["sg-04211bd5ce13e32c0"]
eni_0bbe8177077664b76_source_dest_check = true
eni_0bbe8177077664b76_description       = ""
eni_0bbe8177077664b76_tags              = {}

eni_04c73891734b9a355_subnet_id         = "subnet-0b77c0d76befaf70d"
eni_04c73891734b9a355_security_groups   = ["sg-0373ac5706eeaf25d"]
eni_04c73891734b9a355_source_dest_check = true
eni_04c73891734b9a355_description       = ""
eni_04c73891734b9a355_tags              = {}

eni_0611b2f378e918fd0_subnet_id         = "subnet-0b77c0d76befaf70d"
eni_0611b2f378e918fd0_security_groups   = []
eni_0611b2f378e918fd0_source_dest_check = true
eni_0611b2f378e918fd0_description       = ""
eni_0611b2f378e918fd0_tags              = {}

eni_012b6b714b4087819_subnet_id         = "subnet-0b77c0d76befaf70d"
eni_012b6b714b4087819_security_groups   = []
eni_012b6b714b4087819_source_dest_check = true
eni_012b6b714b4087819_description       = ""
eni_012b6b714b4087819_tags              = {}

eni_0e4a63f28d3282937_subnet_id         = "subnet-0b77c0d76befaf70d"
eni_0e4a63f28d3282937_security_groups   = []
eni_0e4a63f28d3282937_source_dest_check = true
eni_0e4a63f28d3282937_description       = ""
eni_0e4a63f28d3282937_tags              = {}

eni_02ae1c010789846b8_subnet_id         = "subnet-0b77c0d76befaf70d"
eni_02ae1c010789846b8_security_groups   = []
eni_02ae1c010789846b8_source_dest_check = true
eni_02ae1c010789846b8_description       = ""
eni_02ae1c010789846b8_tags              = {}

eni_0419e64531f4b1e19_subnet_id         = "subnet-0b77c0d76befaf70d"
eni_0419e64531f4b1e19_security_groups   = []
eni_0419e64531f4b1e19_source_dest_check = true
eni_0419e64531f4b1e19_description       = ""
eni_0419e64531f4b1e19_tags              = {}

eni_06111e22ea34335a6_subnet_id         = "subnet-0b77c0d76befaf70d"
eni_06111e22ea34335a6_security_groups   = []
eni_06111e22ea34335a6_source_dest_check = true
eni_06111e22ea34335a6_description       = ""
eni_06111e22ea34335a6_tags              = {}

eni_0d738514adbd9a62b_subnet_id         = "subnet-0b77c0d76befaf70d"
eni_0d738514adbd9a62b_security_groups   = []
eni_0d738514adbd9a62b_source_dest_check = true
eni_0d738514adbd9a62b_description       = ""
eni_0d738514adbd9a62b_tags              = {}