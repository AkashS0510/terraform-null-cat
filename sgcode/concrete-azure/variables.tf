variable "region" {
  type        = string
  description = "AWS region"
}

# IAM Instance Profile: ec2_private_runner_role
variable "iam_instance_profile_ec2_private_runner_role_name" {
  type        = string
  description = "Name of the IAM instance profile ec2_private_runner_role"
}
variable "iam_instance_profile_ec2_private_runner_role_path" {
  type        = string
  description = "Path for the IAM instance profile ec2_private_runner_role"
}
variable "iam_instance_profile_ec2_private_runner_role_role" {
  type        = string
  description = "Role for the IAM instance profile ec2_private_runner_role"
}

# IAM Instance Profile: AmazonEC2ContainerServiceforEC2Role
variable "iam_instance_profile_amazon_ec2_container_service_name" {
  type        = string
  description = "Name of the IAM instance profile AmazonEC2ContainerServiceforEC2Role"
}
variable "iam_instance_profile_amazon_ec2_container_service_path" {
  type        = string
  description = "Path for the IAM instance profile AmazonEC2ContainerServiceforEC2Role"
}
variable "iam_instance_profile_amazon_ec2_container_service_role" {
  type        = string
  description = "Role for the IAM instance profile AmazonEC2ContainerServiceforEC2Role"
}

# IAM Instance Profile: eks-fece5f1f
variable "iam_instance_profile_eks_fece5f1f_name" {
  type        = string
  description = "Name of the IAM instance profile eks-fece5f1f"
}
variable "iam_instance_profile_eks_fece5f1f_path" {
  type        = string
  description = "Path for the IAM instance profile eks-fece5f1f"
}
variable "iam_instance_profile_eks_fece5f1f_role" {
  type        = string
  description = "Role for the IAM instance profile eks-fece5f1f"
}

# IAM Instance Profile: sg-private-runner-connector
variable "iam_instance_profile_sg_private_runner_connector_name" {
  type        = string
  description = "Name of the IAM instance profile sg-private-runner-connector"
}
variable "iam_instance_profile_sg_private_runner_connector_path" {
  type        = string
  description = "Path for the IAM instance profile sg-private-runner-connector"
}
variable "iam_instance_profile_sg_private_runner_connector_role" {
  type        = string
  description = "Role for the IAM instance profile sg-private-runner-connector"
}

# IAM Instance Profile: Neha_Private_Runner
variable "iam_instance_profile_neha_private_runner_name" {
  type        = string
  description = "Name of the IAM instance profile Neha_Private_Runner"
}
variable "iam_instance_profile_neha_private_runner_path" {
  type        = string
  description = "Path for the IAM instance profile Neha_Private_Runner"
}
variable "iam_instance_profile_neha_private_runner_role" {
  type        = string
  description = "Role for the IAM instance profile Neha_Private_Runner"
}

# Key Pair: private-runner-workshop
variable "key_pair_private_runner_workshop_key_name" {
  type        = string
  description = "Key name for private-runner-workshop"
}
variable "key_pair_private_runner_workshop_public_key" {
  type        = string
  description = "Public key for private-runner-workshop"
  sensitive   = true
}

# Key Pair: nonprod-euc1
variable "key_pair_nonprod_euc1_key_name" {
  type        = string
  description = "Key name for nonprod-euc1"
}
variable "key_pair_nonprod_euc1_public_key" {
  type        = string
  description = "Public key for nonprod-euc1"
  sensitive   = true
}

# Key Pair: taher-private-runner
variable "key_pair_taher_private_runner_key_name" {
  type        = string
  description = "Key name for taher-private-runner"
}
variable "key_pair_taher_private_runner_public_key" {
  type        = string
  description = "Public key for taher-private-runner"
  sensitive   = true
}

# Key Pair: aplattel-private-runner
variable "key_pair_aplattel_private_runner_key_name" {
  type        = string
  description = "Key name for aplattel-private-runner"
}
variable "key_pair_aplattel_private_runner_public_key" {
  type        = string
  description = "Public key for aplattel-private-runner"
  sensitive   = true
}

# Key Pair: ec2-key-k3ehbblq
variable "key_pair_ec2_key_k3ehbblq_key_name" {
  type        = string
  description = "Key name for ec2-key-k3ehbblq"
}
variable "key_pair_ec2_key_k3ehbblq_public_key" {
  type        = string
  description = "Public key for ec2-key-k3ehbblq"
  sensitive   = true
}

# Key Pair: ec2-key-ss7d1dui
variable "key_pair_ec2_key_ss7d1dui_key_name" {
  type        = string
  description = "Key name for ec2-key-ss7d1dui"
}
variable "key_pair_ec2_key_ss7d1dui_public_key" {
  type        = string
  description = "Public key for ec2-key-ss7d1dui"
  sensitive   = true
}

# Key Pair: ec2-key-16n94g2h
variable "key_pair_ec2_key_16n94g2h_key_name" {
  type        = string
  description = "Key name for ec2-key-16n94g2h"
}
variable "key_pair_ec2_key_16n94g2h_public_key" {
  type        = string
  description = "Public key for ec2-key-16n94g2h"
  sensitive   = true
}

# Key Pair: adis-key-pair
variable "key_pair_adis_key_pair_key_name" {
  type        = string
  description = "Key name for adis-key-pair"
}
variable "key_pair_adis_key_pair_public_key" {
  type        = string
  description = "Public key for adis-key-pair"
  sensitive   = true
}

# Instance: private-runner-do-not-delete
variable "instance_private_runner_do_not_delete_ami_id" {
  type        = string
  description = "AMI ID for private-runner-do-not-delete"
}
variable "instance_private_runner_do_not_delete_instance_type" {
  type        = string
  description = "Instance type for private-runner-do-not-delete"
}
variable "instance_private_runner_do_not_delete_subnet_id" {
  type        = string
  description = "Subnet ID for private-runner-do-not-delete"
}
variable "instance_private_runner_do_not_delete_vpc_security_group_ids" {
  type        = list(string)
  description = "Security group IDs for private-runner-do-not-delete"
}
variable "instance_private_runner_do_not_delete_availability_zone" {
  type        = string
  description = "Availability zone for private-runner-do-not-delete"
}
variable "instance_private_runner_do_not_delete_source_dest_check" {
  type        = bool
  description = "Source/dest check for private-runner-do-not-delete"
}
variable "instance_private_runner_do_not_delete_tenancy" {
  type        = string
  description = "Tenancy for private-runner-do-not-delete"
}
variable "instance_private_runner_do_not_delete_monitoring" {
  type        = bool
  description = "Monitoring for private-runner-do-not-delete"
}
variable "instance_private_runner_do_not_delete_metadata_http_endpoint" {
  type        = string
  description = "Metadata http endpoint for private-runner-do-not-delete"
}
variable "instance_private_runner_do_not_delete_metadata_http_tokens" {
  type        = string
  description = "Metadata http tokens for private-runner-do-not-delete"
}
variable "instance_private_runner_do_not_delete_metadata_http_put_response_hop_limit" {
  type        = number
  description = "Metadata http put response hop limit for private-runner-do-not-delete"
}
variable "instance_private_runner_do_not_delete_metadata_http_protocol_ipv6" {
  type        = string
  description = "Metadata http protocol ipv6 for private-runner-do-not-delete"
}
variable "instance_private_runner_do_not_delete_metadata_instance_metadata_tags" {
  type        = string
  description = "Metadata instance metadata tags for private-runner-do-not-delete"
}
variable "instance_private_runner_do_not_delete_tags" {
  type        = map(string)
  description = "Tags for private-runner-do-not-delete"
}

# Instance: ecs-instances-admin-workflow-qa
variable "instance_ecs_instances_admin_workflow_qa_ami_id" {
  type        = string
  description = "AMI ID for ecs-instances-admin-workflow-qa"
}
variable "instance_ecs_instances_admin_workflow_qa_instance_type" {
  type        = string
  description = "Instance type for ecs-instances-admin-workflow-qa"
}
variable "instance_ecs_instances_admin_workflow_qa_subnet_id" {
  type        = string
  description = "Subnet ID for ecs-instances-admin-workflow-qa"
}
variable "instance_ecs_instances_admin_workflow_qa_vpc_security_group_ids" {
  type        = list(string)
  description = "Security group IDs for ecs-instances-admin-workflow-qa"
}
variable "instance_ecs_instances_admin_workflow_qa_availability_zone" {
  type        = string
  description = "Availability zone for ecs-instances-admin-workflow-qa"
}
variable "instance_ecs_instances_admin_workflow_qa_source_dest_check" {
  type        = bool
  description = "Source/dest check for ecs-instances-admin-workflow-qa"
}
variable "instance_ecs_instances_admin_workflow_qa_tenancy" {
  type        = string
  description = "Tenancy for ecs-instances-admin-workflow-qa"
}
variable "instance_ecs_instances_admin_workflow_qa_monitoring" {
  type        = bool
  description = "Monitoring for ecs-instances-admin-workflow-qa"
}
variable "instance_ecs_instances_admin_workflow_qa_metadata_http_endpoint" {
  type        = string
  description = "Metadata http endpoint for ecs-instances-admin-workflow-qa"
}
variable "instance_ecs_instances_admin_workflow_qa_metadata_http_tokens" {
  type        = string
  description = "Metadata http tokens for ecs-instances-admin-workflow-qa"
}
variable "instance_ecs_instances_admin_workflow_qa_metadata_http_put_response_hop_limit" {
  type        = number
  description = "Metadata http put response hop limit for ecs-instances-admin-workflow-qa"
}
variable "instance_ecs_instances_admin_workflow_qa_metadata_http_protocol_ipv6" {
  type        = string
  description = "Metadata http protocol ipv6 for ecs-instances-admin-workflow-qa"
}
variable "instance_ecs_instances_admin_workflow_qa_metadata_instance_metadata_tags" {
  type        = string
  description = "Metadata instance metadata tags for ecs-instances-admin-workflow-qa"
}
variable "instance_ecs_instances_admin_workflow_qa_tags" {
  type        = map(string)
  description = "Tags for ecs-instances-admin-workflow-qa"
}

# Instance: managed-node
variable "instance_managed_node_ami_id" {
  type        = string
  description = "AMI ID for managed-node"
}
variable "instance_managed_node_instance_type" {
  type        = string
  description = "Instance type for managed-node"
}
variable "instance_managed_node_subnet_id" {
  type        = string
  description = "Subnet ID for managed-node"
}
variable "instance_managed_node_vpc_security_group_ids" {
  type        = list(string)
  description = "Security group IDs for managed-node"
}
variable "instance_managed_node_key_name" {
  type        = string
  description = "Key name for managed-node"
}
variable "instance_managed_node_availability_zone" {
  type        = string
  description = "Availability zone for managed-node"
}
variable "instance_managed_node_source_dest_check" {
  type        = bool
  description = "Source/dest check for managed-node"
}
variable "instance_managed_node_tenancy" {
  type        = string
  description = "Tenancy for managed-node"
}
variable "instance_managed_node_monitoring" {
  type        = bool
  description = "Monitoring for managed-node"
}
variable "instance_managed_node_metadata_http_endpoint" {
  type        = string
  description = "Metadata http endpoint for managed-node"
}
variable "instance_managed_node_metadata_http_tokens" {
  type        = string
  description = "Metadata http tokens for managed-node"
}
variable "instance_managed_node_metadata_http_put_response_hop_limit" {
  type        = number
  description = "Metadata http put response hop limit for managed-node"
}
variable "instance_managed_node_metadata_http_protocol_ipv6" {
  type        = string
  description = "Metadata http protocol ipv6 for managed-node"
}
variable "instance_managed_node_metadata_instance_metadata_tags" {
  type        = string
  description = "Metadata instance metadata tags for managed-node"
}
variable "instance_managed_node_tags" {
  type        = map(string)
  description = "Tags for managed-node"
}

# Instance: privat-runner
variable "instance_privat_runner_ami_id" {
  type        = string
  description = "AMI ID for privat-runner"
}
variable "instance_privat_runner_instance_type" {
  type        = string
  description = "Instance type for privat-runner"
}
variable "instance_privat_runner_subnet_id" {
  type        = string
  description = "Subnet ID for privat-runner"
}
variable "instance_privat_runner_vpc_security_group_ids" {
  type        = list(string)
  description = "Security group IDs for privat-runner"
}
variable "instance_privat_runner_iam_instance_profile" {
  type        = string
  description = "IAM instance profile for privat-runner"
}
variable "instance_privat_runner_availability_zone" {
  type        = string
  description = "Availability zone for privat-runner"
}
variable "instance_privat_runner_source_dest_check" {
  type        = bool
  description = "Source/dest check for privat-runner"
}
variable "instance_privat_runner_tenancy" {
  type        = string
  description = "Tenancy for privat-runner"
}
variable "instance_privat_runner_monitoring" {
  type        = bool
  description = "Monitoring for privat-runner"
}
variable "instance_privat_runner_metadata_http_endpoint" {
  type        = string
  description = "Metadata http endpoint for privat-runner"
}
variable "instance_privat_runner_metadata_http_tokens" {
  type        = string
  description = "Metadata http tokens for privat-runner"
}
variable "instance_privat_runner_metadata_http_put_response_hop_limit" {
  type        = number
  description = "Metadata http put response hop limit for privat-runner"
}
variable "instance_privat_runner_metadata_http_protocol_ipv6" {
  type        = string
  description = "Metadata http protocol ipv6 for privat-runner"
}
variable "instance_privat_runner_metadata_instance_metadata_tags" {
  type        = string
  description = "Metadata instance metadata tags for privat-runner"
}
variable "instance_privat_runner_tags" {
  type        = map(string)
  description = "Tags for privat-runner"
}

# Instance: liveeo-private-replica-debug
variable "instance_liveeo_private_replica_debug_ami_id" {
  type        = string
  description = "AMI ID for liveeo-private-replica-debug"
}
variable "instance_liveeo_private_replica_debug_instance_type" {
  type        = string
  description = "Instance type for liveeo-private-replica-debug"
}
variable "instance_liveeo_private_replica_debug_subnet_id" {
  type        = string
  description = "Subnet ID for liveeo-private-replica-debug"
}
variable "instance_liveeo_private_replica_debug_vpc_security_group_ids" {
  type        = list(string)
  description = "Security group IDs for liveeo-private-replica-debug"
}
variable "instance_liveeo_private_replica_debug_iam_instance_profile" {
  type        = string
  description = "IAM instance profile for liveeo-private-replica-debug"
}
variable "instance_liveeo_private_replica_debug_availability_zone" {
  type        = string
  description = "Availability zone for liveeo-private-replica-debug"
}
variable "instance_liveeo_private_replica_debug_source_dest_check" {
  type        = bool
  description = "Source/dest check for liveeo-private-replica-debug"
}
variable "instance_liveeo_private_replica_debug_tenancy" {
  type        = string
  description = "Tenancy for liveeo-private-replica-debug"
}
variable "instance_liveeo_private_replica_debug_monitoring" {
  type        = bool
  description = "Monitoring for liveeo-private-replica-debug"
}
variable "instance_liveeo_private_replica_debug_metadata_http_endpoint" {
  type        = string
  description = "Metadata http endpoint for liveeo-private-replica-debug"
}
variable "instance_liveeo_private_replica_debug_metadata_http_tokens" {
  type        = string
  description = "Metadata http tokens for liveeo-private-replica-debug"
}
variable "instance_liveeo_private_replica_debug_metadata_http_put_response_hop_limit" {
  type        = number
  description = "Metadata http put response hop limit for liveeo-private-replica-debug"
}
variable "instance_liveeo_private_replica_debug_metadata_http_protocol_ipv6" {
  type        = string
  description = "Metadata http protocol ipv6 for liveeo-private-replica-debug"
}
variable "instance_liveeo_private_replica_debug_metadata_instance_metadata_tags" {
  type        = string
  description = "Metadata instance metadata tags for liveeo-private-replica-debug"
}
variable "instance_liveeo_private_replica_debug_tags" {
  type        = map(string)
  description = "Tags for liveeo-private-replica-debug"
}

# Instance: i-0334fc9f1f177c10f
variable "instance_i_0334fc9f1f177c10f_ami_id" {
  type        = string
  description = "AMI ID for i-0334fc9f1f177c10f"
}
variable "instance_i_0334fc9f1f177c10f_instance_type" {
  type        = string
  description = "Instance type for i-0334fc9f1f177c10f"
}
variable "instance_i_0334fc9f1f177c10f_subnet_id" {
  type        = string
  description = "Subnet ID for i-0334fc9f1f177c10f"
}
variable "instance_i_0334fc9f1f177c10f_vpc_security_group_ids" {
  type        = list(string)
  description = "Security group IDs for i-0334fc9f1f177c10f"
}
variable "instance_i_0334fc9f1f177c10f_iam_instance_profile" {
  type        = string
  description = "IAM instance profile for i-0334fc9f1f177c10f"
}
variable "instance_i_0334fc9f1f177c10f_availability_zone" {
  type        = string
  description = "Availability zone for i-0334fc9f1f177c10f"
}
variable "instance_i_0334fc9f1f177c10f_source_dest_check" {
  type        = bool
  description = "Source/dest check for i-0334fc9f1f177c10f"
}
variable "instance_i_0334fc9f1f177c10f_tenancy" {
  type        = string
  description = "Tenancy for i-0334fc9f1f177c10f"
}
variable "instance_i_0334fc9f1f177c10f_monitoring" {
  type        = bool
  description = "Monitoring for i-0334fc9f1f177c10f"
}
variable "instance_i_0334fc9f1f177c10f_metadata_http_endpoint" {
  type        = string
  description = "Metadata http endpoint for i-0334fc9f1f177c10f"
}
variable "instance_i_0334fc9f1f177c10f_metadata_http_tokens" {
  type        = string
  description = "Metadata http tokens for i-0334fc9f1f177c10f"
}
variable "instance_i_0334fc9f1f177c10f_metadata_http_put_response_hop_limit" {
  type        = number
  description = "Metadata http put response hop limit for i-0334fc9f1f177c10f"
}
variable "instance_i_0334fc9f1f177c10f_metadata_http_protocol_ipv6" {
  type        = string
  description = "Metadata http protocol ipv6 for i-0334fc9f1f177c10f"
}
variable "instance_i_0334fc9f1f177c10f_metadata_instance_metadata_tags" {
  type        = string
  description = "Metadata instance metadata tags for i-0334fc9f1f177c10f"
}
variable "instance_i_0334fc9f1f177c10f_tags" {
  type        = map(string)
  description = "Tags for i-0334fc9f1f177c10f"
}

# Instance: demo-org-prepare-release-branch-testing
variable "instance_demo_org_prepare_release_branch_testing_ami_id" {
  type        = string
  description = "AMI ID for demo-org-prepare-release-branch-testing"
}
variable "instance_demo_org_prepare_release_branch_testing_instance_type" {
  type        = string
  description = "Instance type for demo-org-prepare-release-branch-testing"
}
variable "instance_demo_org_prepare_release_branch_testing_subnet_id" {
  type        = string
  description = "Subnet ID for demo-org-prepare-release-branch-testing"
}
variable "instance_demo_org_prepare_release_branch_testing_vpc_security_group_ids" {
  type        = list(string)
  description = "Security group IDs for demo-org-prepare-release-branch-testing"
}
variable "instance_demo_org_prepare_release_branch_testing_iam_instance_profile" {
  type        = string
  description = "IAM instance profile for demo-org-prepare-release-branch-testing"
}
variable "instance_demo_org_prepare_release_branch_testing_availability_zone" {
  type        = string
  description = "Availability zone for demo-org-prepare-release-branch-testing"
}
variable "instance_demo_org_prepare_release_branch_testing_source_dest_check" {
  type        = bool
  description = "Source/dest check for demo-org-prepare-release-branch-testing"
}
variable "instance_demo_org_prepare_release_branch_testing_tenancy" {
  type        = string
  description = "Tenancy for demo-org-prepare-release-branch-testing"
}
variable "instance_demo_org_prepare_release_branch_testing_monitoring" {
  type        = bool
  description = "Monitoring for demo-org-prepare-release-branch-testing"
}
variable "instance_demo_org_prepare_release_branch_testing_metadata_http_endpoint" {
  type        = string
  description = "Metadata http endpoint for demo-org-prepare-release-branch-testing"
}
variable "instance_demo_org_prepare_release_branch_testing_metadata_http_tokens" {
  type        = string
  description = "Metadata http tokens for demo-org-prepare-release-branch-testing"
}
variable "instance_demo_org_prepare_release_branch_testing_metadata_http_put_response_hop_limit" {
  type        = number
  description = "Metadata http put response hop limit for demo-org-prepare-release-branch-testing"
}
variable "instance_demo_org_prepare_release_branch_testing_metadata_http_protocol_ipv6" {
  type        = string
  description = "Metadata http protocol ipv6 for demo-org-prepare-release-branch-testing"
}
variable "instance_demo_org_prepare_release_branch_testing_metadata_instance_metadata_tags" {
  type        = string
  description = "Metadata instance metadata tags for demo-org-prepare-release-branch-testing"
}
variable "instance_demo_org_prepare_release_branch_testing_tags" {
  type        = map(string)
  description = "Tags for demo-org-prepare-release-branch-testing"
}

# Instance: taher-private-runner-amz
variable "instance_taher_private_runner_amz_ami_id" {
  type        = string
  description = "AMI ID for taher-private-runner-amz"
}
variable "instance_taher_private_runner_amz_instance_type" {
  type        = string
  description = "Instance type for taher-private-runner-amz"
}
variable "instance_taher_private_runner_amz_subnet_id" {
  type        = string
  description = "Subnet ID for taher-private-runner-amz"
}
variable "instance_taher_private_runner_amz_vpc_security_group_ids" {
  type        = list(string)
  description = "Security group IDs for taher-private-runner-amz"
}
variable "instance_taher_private_runner_amz_iam_instance_profile" {
  type        = string
  description = "IAM instance profile for taher-private-runner-amz"
}
variable "instance_taher_private_runner_amz_availability_zone" {
  type        = string
  description = "Availability zone for taher-private-runner-amz"
}
variable "instance_taher_private_runner_amz_source_dest_check" {
  type        = bool
  description = "Source/dest check for taher-private-runner-amz"
}
variable "instance_taher_private_runner_amz_tenancy" {
  type        = string
  description = "Tenancy for taher-private-runner-amz"
}
variable "instance_taher_private_runner_amz_monitoring" {
  type        = bool
  description = "Monitoring for taher-private-runner-amz"
}
variable "instance_taher_private_runner_amz_metadata_http_endpoint" {
  type        = string
  description = "Metadata http endpoint for taher-private-runner-amz"
}
variable "instance_taher_private_runner_amz_metadata_http_tokens" {
  type        = string
  description = "Metadata http tokens for taher-private-runner-amz"
}
variable "instance_taher_private_runner_amz_metadata_http_put_response_hop_limit" {
  type        = number
  description = "Metadata http put response hop limit for taher-private-runner-amz"
}
variable "instance_taher_private_runner_amz_metadata_http_protocol_ipv6" {
  type        = string
  description = "Metadata http protocol ipv6 for taher-private-runner-amz"
}
variable "instance_taher_private_runner_amz_metadata_instance_metadata_tags" {
  type        = string
  description = "Metadata instance metadata tags for taher-private-runner-amz"
}
variable "instance_taher_private_runner_amz_tags" {
  type        = map(string)
  description = "Tags for taher-private-runner-amz"
}

# Instance: aplattel-sg-private-runner
variable "instance_aplattel_sg_private_runner_ami_id" {
  type        = string
  description = "AMI ID for aplattel-sg-private-runner"
}
variable "instance_aplattel_sg_private_runner_instance_type" {
  type        = string
  description = "Instance type for aplattel-sg-private-runner"
}
variable "instance_aplattel_sg_private_runner_subnet_id" {
  type        = string
  description = "Subnet ID for aplattel-sg-private-runner"
}
variable "instance_aplattel_sg_private_runner_vpc_security_group_ids" {
  type        = list(string)
  description = "Security group IDs for aplattel-sg-private-runner"
}
variable "instance_aplattel_sg_private_runner_availability_zone" {
  type        = string
  description = "Availability zone for aplattel-sg-private-runner"
}
variable "instance_aplattel_sg_private_runner_source_dest_check" {
  type        = bool
  description = "Source/dest check for aplattel-sg-private-runner"
}
variable "instance_aplattel_sg_private_runner_tenancy" {
  type        = string
  description = "Tenancy for aplattel-sg-private-runner"
}
variable "instance_aplattel_sg_private_runner_monitoring" {
  type        = bool
  description = "Monitoring for aplattel-sg-private-runner"
}
variable "instance_aplattel_sg_private_runner_metadata_http_endpoint" {
  type        = string
  description = "Metadata http endpoint for aplattel-sg-private-runner"
}
variable "instance_aplattel_sg_private_runner_metadata_http_tokens" {
  type        = string
  description = "Metadata http tokens for aplattel-sg-private-runner"
}
variable "instance_aplattel_sg_private_runner_metadata_http_put_response_hop_limit" {
  type        = number
  description = "Metadata http put response hop limit for aplattel-sg-private-runner"
}
variable "instance_aplattel_sg_private_runner_metadata_http_protocol_ipv6" {
  type        = string
  description = "Metadata http protocol ipv6 for aplattel-sg-private-runner"
}
variable "instance_aplattel_sg_private_runner_metadata_instance_metadata_tags" {
  type        = string
  description = "Metadata instance metadata tags for aplattel-sg-private-runner"
}
variable "instance_aplattel_sg_private_runner_tags" {
  type        = map(string)
  description = "Tags for aplattel-sg-private-runner"
}

# Instance: i-000e597ea8aa8260b
variable "instance_i_000e597ea8aa8260b_ami_id" {
  type        = string
  description = "AMI ID for i-000e597ea8aa8260b"
}
variable "instance_i_000e597ea8aa8260b_instance_type" {
  type        = string
  description = "Instance type for i-000e597ea8aa8260b"
}
variable "instance_i_000e597ea8aa8260b_subnet_id" {
  type        = string
  description = "Subnet ID for i-000e597ea8aa8260b"
}
variable "instance_i_000e597ea8aa8260b_vpc_security_group_ids" {
  type        = list(string)
  description = "Security group IDs for i-000e597ea8aa8260b"
}
variable "instance_i_000e597ea8aa8260b_iam_instance_profile" {
  type        = string
  description = "IAM instance profile for i-000e597ea8aa8260b"
}
variable "instance_i_000e597ea8aa8260b_availability_zone" {
  type        = string
  description = "Availability zone for i-000e597ea8aa8260b"
}
variable "instance_i_000e597ea8aa8260b_source_dest_check" {
  type        = bool
  description = "Source/dest check for i-000e597ea8aa8260b"
}
variable "instance_i_000e597ea8aa8260b_tenancy" {
  type        = string
  description = "Tenancy for i-000e597ea8aa8260b"
}
variable "instance_i_000e597ea8aa8260b_monitoring" {
  type        = bool
  description = "Monitoring for i-000e597ea8aa8260b"
}
variable "instance_i_000e597ea8aa8260b_metadata_http_endpoint" {
  type        = string
  description = "Metadata http endpoint for i-000e597ea8aa8260b"
}
variable "instance_i_000e597ea8aa8260b_metadata_http_tokens" {
  type        = string
  description = "Metadata http tokens for i-000e597ea8aa8260b"
}
variable "instance_i_000e597ea8aa8260b_metadata_http_put_response_hop_limit" {
  type        = number
  description = "Metadata http put response hop limit for i-000e597ea8aa8260b"
}
variable "instance_i_000e597ea8aa8260b_metadata_http_protocol_ipv6" {
  type        = string
  description = "Metadata http protocol ipv6 for i-000e597ea8aa8260b"
}
variable "instance_i_000e597ea8aa8260b_metadata_instance_metadata_tags" {
  type        = string
  description = "Metadata instance metadata tags for i-000e597ea8aa8260b"
}
variable "instance_i_000e597ea8aa8260b_tags" {
  type        = map(string)
  description = "Tags for i-000e597ea8aa8260b"
}

# Instance: i-007e6212f82fd1d38
variable "instance_i_007e6212f82fd1d38_ami_id" {
  type        = string
  description = "AMI ID for i-007e6212f82fd1d38"
}
variable "instance_i_007e6212f82fd1d38_instance_type" {
  type        = string
  description = "Instance type for i-007e6212f82fd1d38"
}
variable "instance_i_007e6212f82fd1d38_subnet_id" {
  type        = string
  description = "Subnet ID for i-007e6212f82fd1d38"
}
variable "instance_i_007e6212f82fd1d38_vpc_security_group_ids" {
  type        = list(string)
  description = "Security group IDs for i-007e6212f82fd1d38"
}
variable "instance_i_007e6212f82fd1d38_key_name" {
  type        = string
  description = "Key name for i-007e6212f82fd1d38"
}
variable "instance_i_007e6212f82fd1d38_iam_instance_profile" {
  type        = string
  description = "IAM instance profile for i-007e6212f82fd1d38"
}
variable "instance_i_007e6212f82fd1d38_availability_zone" {
  type        = string
  description = "Availability zone for i-007e6212f82fd1d38"
}
variable "instance_i_007e6212f82fd1d38_source_dest_check" {
  type        = bool
  description = "Source/dest check for i-007e6212f82fd1d38"
}
variable "instance_i_007e6212f82fd1d38_tenancy" {
  type        = string
  description = "Tenancy for i-007e6212f82fd1d38"
}
variable "instance_i_007e6212f82fd1d38_monitoring" {
  type        = bool
  description = "Monitoring for i-007e6212f82fd1d38"
}
variable "instance_i_007e6212f82fd1d38_metadata_http_endpoint" {
  type        = string
  description = "Metadata http endpoint for i-007e6212f82fd1d38"
}
variable "instance_i_007e6212f82fd1d38_metadata_http_tokens" {
  type        = string
  description = "Metadata http tokens for i-007e6212f82fd1d38"
}
variable "instance_i_007e6212f82fd1d38_metadata_http_put_response_hop_limit" {
  type        = number
  description = "Metadata http put response hop limit for i-007e6212f82fd1d38"
}
variable "instance_i_007e6212f82fd1d38_metadata_http_protocol_ipv6" {
  type        = string
  description = "Metadata http protocol ipv6 for i-007e6212f82fd1d38"
}
variable "instance_i_007e6212f82fd1d38_metadata_instance_metadata_tags" {
  type        = string
  description = "Metadata instance metadata tags for i-007e6212f82fd1d38"
}
variable "instance_i_007e6212f82fd1d38_tags" {
  type        = map(string)
  description = "Tags for i-007e6212f82fd1d38"
}

# Instance: i-00af4198af591318c
variable "instance_i_00af4198af591318c_ami_id" {
  type        = string
  description = "AMI ID for i-00af4198af591318c"
}
variable "instance_i_00af4198af591318c_instance_type" {
  type        = string
  description = "Instance type for i-00af4198af591318c"
}
variable "instance_i_00af4198af591318c_subnet_id" {
  type        = string
  description = "Subnet ID for i-00af4198af591318c"
}
variable "instance_i_00af4198af591318c_vpc_security_group_ids" {
  type        = list(string)
  description = "Security group IDs for i-00af4198af591318c"
}
variable "instance_i_00af4198af591318c_iam_instance_profile" {
  type        = string
  description = "IAM instance profile for i-00af4198af591318c"
}
variable "instance_i_00af4198af591318c_availability_zone" {
  type        = string
  description = "Availability zone for i-00af4198af591318c"
}
variable "instance_i_00af4198af591318c_source_dest_check" {
  type        = bool
  description = "Source/dest check for i-00af4198af591318c"
}
variable "instance_i_00af4198af591318c_tenancy" {
  type        = string
  description = "Tenancy for i-00af4198af591318c"
}
variable "instance_i_00af4198af591318c_monitoring" {
  type        = bool
  description = "Monitoring for i-00af4198af591318c"
}
variable "instance_i_00af4198af591318c_metadata_http_endpoint" {
  type        = string
  description = "Metadata http endpoint for i-00af4198af591318c"
}
variable "instance_i_00af4198af591318c_metadata_http_tokens" {
  type        = string
  description = "Metadata http tokens for i-00af4198af591318c"
}
variable "instance_i_00af4198af591318c_metadata_http_put_response_hop_limit" {
  type        = number
  description = "Metadata http put response hop limit for i-00af4198af591318c"
}
variable "instance_i_00af4198af591318c_metadata_http_protocol_ipv6" {
  type        = string
  description = "Metadata http protocol ipv6 for i-00af4198af591318c"
}
variable "instance_i_00af4198af591318c_metadata_instance_metadata_tags" {
  type        = string
  description = "Metadata instance metadata tags for i-00af4198af591318c"
}
variable "instance_i_00af4198af591318c_tags" {
  type        = map(string)
  description = "Tags for i-00af4198af591318c"
}

# Instance: i-015dcccda629ac122
variable "instance_i_015dcccda629ac122_ami_id" {
  type        = string
  description = "AMI ID for i-015dcccda629ac122"
}
variable "instance_i_015dcccda629ac122_instance_type" {
  type        = string
  description = "Instance type for i-015dcccda629ac122"
}
variable "instance_i_015dcccda629ac122_subnet_id" {
  type        = string
  description = "Subnet ID for i-015dcccda629ac122"
}
variable "instance_i_015dcccda629ac122_vpc_security_group_ids" {
  type        = list(string)
  description = "Security group IDs for i-015dcccda629ac122"
}
variable "instance_i_015dcccda629ac122_key_name" {
  type        = string
  description = "Key name for i-015dcccda629ac122"
}
variable "instance_i_015dcccda629ac122_iam_instance_profile" {
  type        = string
  description = "IAM instance profile for i-015dcccda629ac122"
}
variable "instance_i_015dcccda629ac122_availability_zone" {
  type        = string
  description = "Availability zone for i-015dcccda629ac122"
}
variable "instance_i_015dcccda629ac122_source_dest_check" {
  type        = bool
  description = "Source/dest check for i-015dcccda629ac122"
}
variable "instance_i_015dcccda629ac122_tenancy" {
  type        = string
  description = "Tenancy for i-015dcccda629ac122"
}
variable "instance_i_015dcccda629ac122_monitoring" {
  type        = bool
  description = "Monitoring for i-015dcccda629ac122"
}
variable "instance_i_015dcccda629ac122_metadata_http_endpoint" {
  type        = string
  description = "Metadata http endpoint for i-015dcccda629ac122"
}
variable "instance_i_015dcccda629ac122_metadata_http_tokens" {
  type        = string
  description = "Metadata http tokens for i-015dcccda629ac122"
}
variable "instance_i_015dcccda629ac122_metadata_http_put_response_hop_limit" {
  type        = number
  description = "Metadata http put response hop limit for i-015dcccda629ac122"
}
variable "instance_i_015dcccda629ac122_metadata_http_protocol_ipv6" {
  type        = string
  description = "Metadata http protocol ipv6 for i-015dcccda629ac122"
}
variable "instance_i_015dcccda629ac122_metadata_instance_metadata_tags" {
  type        = string
  description = "Metadata instance metadata tags for i-015dcccda629ac122"
}
variable "instance_i_015dcccda629ac122_tags" {
  type        = map(string)
  description = "Tags for i-015dcccda629ac122"
}

# Instance: test-instance
variable "instance_test_instance_ami_id" {
  type        = string
  description = "AMI ID for test-instance"
}
variable "instance_test_instance_instance_type" {
  type        = string
  description = "Instance type for test-instance"
}
variable "instance_test_instance_subnet_id" {
  type        = string
  description = "Subnet ID for test-instance"
}
variable "instance_test_instance_vpc_security_group_ids" {
  type        = list(string)
  description = "Security group IDs for test-instance"
}
variable "instance_test_instance_key_name" {
  type        = string
  description = "Key name for test-instance"
}
variable "instance_test_instance_iam_instance_profile" {
  type        = string
  description = "IAM instance profile for test-instance"
}
variable "instance_test_instance_availability_zone" {
  type        = string
  description = "Availability zone for test-instance"
}
variable "instance_test_instance_source_dest_check" {
  type        = bool
  description = "Source/dest check for test-instance"
}
variable "instance_test_instance_tenancy" {
  type        = string
  description = "Tenancy for test-instance"
}
variable "instance_test_instance_monitoring" {
  type        = bool
  description = "Monitoring for test-instance"
}
variable "instance_test_instance_metadata_http_endpoint" {
  type        = string
  description = "Metadata http endpoint for test-instance"
}
variable "instance_test_instance_metadata_http_tokens" {
  type        = string
  description = "Metadata http tokens for test-instance"
}
variable "instance_test_instance_metadata_http_put_response_hop_limit" {
  type        = number
  description = "Metadata http put response hop limit for test-instance"
}
variable "instance_test_instance_metadata_http_protocol_ipv6" {
  type        = string
  description = "Metadata http protocol ipv6 for test-instance"
}
variable "instance_test_instance_metadata_instance_metadata_tags" {
  type        = string
  description = "Metadata instance metadata tags for test-instance"
}
variable "instance_test_instance_tags" {
  type        = map(string)
  description = "Tags for test-instance"
}

# Instance: private-runner
variable "instance_private_runner_ami_id" {
  type        = string
  description = "AMI ID for private-runner"
}
variable "instance_private_runner_instance_type" {
  type        = string
  description = "Instance type for private-runner"
}
variable "instance_private_runner_subnet_id" {
  type        = string
  description = "Subnet ID for private-runner"
}
variable "instance_private_runner_vpc_security_group_ids" {
  type        = list(string)
  description = "Security group IDs for private-runner"
}
variable "instance_private_runner_iam_instance_profile" {
  type        = string
  description = "IAM instance profile for private-runner"
}
variable "instance_private_runner_availability_zone" {
  type        = string
  description = "Availability zone for private-runner"
}
variable "instance_private_runner_source_dest_check" {
  type        = bool
  description = "Source/dest check for private-runner"
}
variable "instance_private_runner_tenancy" {
  type        = string
  description = "Tenancy for private-runner"
}
variable "instance_private_runner_monitoring" {
  type        = bool
  description = "Monitoring for private-runner"
}
variable "instance_private_runner_metadata_http_endpoint" {
  type        = string
  description = "Metadata http endpoint for private-runner"
}
variable "instance_private_runner_metadata_http_tokens" {
  type        = string
  description = "Metadata http tokens for private-runner"
}
variable "instance_private_runner_metadata_http_put_response_hop_limit" {
  type        = number
  description = "Metadata http put response hop limit for private-runner"
}
variable "instance_private_runner_metadata_http_protocol_ipv6" {
  type        = string
  description = "Metadata http protocol ipv6 for private-runner"
}
variable "instance_private_runner_metadata_instance_metadata_tags" {
  type        = string
  description = "Metadata instance metadata tags for private-runner"
}
variable "instance_private_runner_tags" {
  type        = map(string)
  description = "Tags for private-runner"
}

# Instance: i-0439c48efdf4ad956
variable "instance_i_0439c48efdf4ad956_ami_id" {
  type        = string
  description = "AMI ID for i-0439c48efdf4ad956"
}
variable "instance_i_0439c48efdf4ad956_instance_type" {
  type        = string
  description = "Instance type for i-0439c48efdf4ad956"
}
variable "instance_i_0439c48efdf4ad956_subnet_id" {
  type        = string
  description = "Subnet ID for i-0439c48efdf4ad956"
}
variable "instance_i_0439c48efdf4ad956_vpc_security_group_ids" {
  type        = list(string)
  description = "Security group IDs for i-0439c48efdf4ad956"
}
variable "instance_i_0439c48efdf4ad956_iam_instance_profile" {
  type        = string
  description = "IAM instance profile for i-0439c48efdf4ad956"
}
variable "instance_i_0439c48efdf4ad956_availability_zone" {
  type        = string
  description = "Availability zone for i-0439c48efdf4ad956"
}
variable "instance_i_0439c48efdf4ad956_source_dest_check" {
  type        = bool
  description = "Source/dest check for i-0439c48efdf4ad956"
}
variable "instance_i_0439c48efdf4ad956_tenancy" {
  type        = string
  description = "Tenancy for i-0439c48efdf4ad956"
}
variable "instance_i_0439c48efdf4ad956_monitoring" {
  type        = bool
  description = "Monitoring for i-0439c48efdf4ad956"
}
variable "instance_i_0439c48efdf4ad956_metadata_http_endpoint" {
  type        = string
  description = "Metadata http endpoint for i-0439c48efdf4ad956"
}
variable "instance_i_0439c48efdf4ad956_metadata_http_tokens" {
  type        = string
  description = "Metadata http tokens for i-0439c48efdf4ad956"
}
variable "instance_i_0439c48efdf4ad956_metadata_http_put_response_hop_limit" {
  type        = number
  description = "Metadata http put response hop limit for i-0439c48efdf4ad956"
}
variable "instance_i_0439c48efdf4ad956_metadata_http_protocol_ipv6" {
  type        = string
  description = "Metadata http protocol ipv6 for i-0439c48efdf4ad956"
}
variable "instance_i_0439c48efdf4ad956_metadata_instance_metadata_tags" {
  type        = string
  description = "Metadata instance metadata tags for i-0439c48efdf4ad956"
}
variable "instance_i_0439c48efdf4ad956_tags" {
  type        = map(string)
  description = "Tags for i-0439c48efdf4ad956"
}

# Instance: i-01a58b9fe5e4d0c3c
variable "instance_i_01a58b9fe5e4d0c3c_ami_id" {
  type        = string
  description = "AMI ID for i-01a58b9fe5e4d0c3c"
}
variable "instance_i_01a58b9fe5e4d0c3c_instance_type" {
  type        = string
  description = "Instance type for i-01a58b9fe5e4d0c3c"
}
variable "instance_i_01a58b9fe5e4d0c3c_subnet_id" {
  type        = string
  description = "Subnet ID for i-01a58b9fe5e4d0c3c"
}
variable "instance_i_01a58b9fe5e4d0c3c_vpc_security_group_ids" {
  type        = list(string)
  description = "Security group IDs for i-01a58b9fe5e4d0c3c"
}
variable "instance_i_01a58b9fe5e4d0c3c_iam_instance_profile" {
  type        = string
  description = "IAM instance profile for i-01a58b9fe5e4d0c3c"
}
variable "instance_i_01a58b9fe5e4d0c3c_availability_zone" {
  type        = string
  description = "Availability zone for i-01a58b9fe5e4d0c3c"
}
variable "instance_i_01a58b9fe5e4d0c3c_source_dest_check" {
  type        = bool
  description = "Source/dest check for i-01a58b9fe5e4d0c3c"
}
variable "instance_i_01a58b9fe5e4d0c3c_tenancy" {
  type        = string
  description = "Tenancy for i-01a58b9fe5e4d0c3c"
}
variable "instance_i_01a58b9fe5e4d0c3c_monitoring" {
  type        = bool
  description = "Monitoring for i-01a58b9fe5e4d0c3c"
}
variable "instance_i_01a58b9fe5e4d0c3c_metadata_http_endpoint" {
  type        = string
  description = "Metadata http endpoint for i-01a58b9fe5e4d0c3c"
}
variable "instance_i_01a58b9fe5e4d0c3c_metadata_http_tokens" {
  type        = string
  description = "Metadata http tokens for i-01a58b9fe5e4d0c3c"
}
variable "instance_i_01a58b9fe5e4d0c3c_metadata_http_put_response_hop_limit" {
  type        = number
  description = "Metadata http put response hop limit for i-01a58b9fe5e4d0c3c"
}
variable "instance_i_01a58b9fe5e4d0c3c_metadata_http_protocol_ipv6" {
  type        = string
  description = "Metadata http protocol ipv6 for i-01a58b9fe5e4d0c3c"
}
variable "instance_i_01a58b9fe5e4d0c3c_metadata_instance_metadata_tags" {
  type        = string
  description = "Metadata instance metadata tags for i-01a58b9fe5e4d0c3c"
}
variable "instance_i_01a58b9fe5e4d0c3c_tags" {
  type        = map(string)
  description = "Tags for i-01a58b9fe5e4d0c3c"
}

# Instance: Neha_Private_Runner-private-runner-asg
variable "instance_neha_private_runner_private_runner_asg_ami_id" {
  type        = string
  description = "AMI ID for Neha_Private_Runner-private-runner-asg"
}
variable "instance_neha_private_runner_private_runner_asg_instance_type" {
  type        = string
  description = "Instance type for Neha_Private_Runner-private-runner-asg"
}
variable "instance_neha_private_runner_private_runner_asg_subnet_id" {
  type        = string
  description = "Subnet ID for Neha_Private_Runner-private-runner-asg"
}
variable "instance_neha_private_runner_private_runner_asg_vpc_security_group_ids" {
  type        = list(string)
  description = "Security group IDs for Neha_Private_Runner-private-runner-asg"
}
variable "instance_neha_private_runner_private_runner_asg_availability_zone" {
  type        = string
  description = "Availability zone for Neha_Private_Runner-private-runner-asg"
}
variable "instance_neha_private_runner_private_runner_asg_source_dest_check" {
  type        = bool
  description = "Source/dest check for Neha_Private_Runner-private-runner-asg"
}
variable "instance_neha_private_runner_private_runner_asg_tenancy" {
  type        = string
  description = "Tenancy for Neha_Private_Runner-private-runner-asg"
}
variable "instance_neha_private_runner_private_runner_asg_monitoring" {
  type        = bool
  description = "Monitoring for Neha_Private_Runner-private-runner-asg"
}
variable "instance_neha_private_runner_private_runner_asg_metadata_http_endpoint" {
  type        = string
  description = "Metadata http endpoint for Neha_Private_Runner-private-runner-asg"
}
variable "instance_neha_private_runner_private_runner_asg_metadata_http_tokens" {
  type        = string
  description = "Metadata http tokens for Neha_Private_Runner-private-runner-asg"
}
variable "instance_neha_private_runner_private_runner_asg_metadata_http_put_response_hop_limit" {
  type        = number
  description = "Metadata http put response hop limit for Neha_Private_Runner-private-runner-asg"
}
variable "instance_neha_private_runner_private_runner_asg_metadata_http_protocol_ipv6" {
  type        = string
  description = "Metadata http protocol ipv6 for Neha_Private_Runner-private-runner-asg"
}
variable "instance_neha_private_runner_private_runner_asg_metadata_instance_metadata_tags" {
  type        = string
  description = "Metadata instance metadata tags for Neha_Private_Runner-private-runner-asg"
}
variable "instance_neha_private_runner_private_runner_asg_tags" {
  type        = map(string)
  description = "Tags for Neha_Private_Runner-private-runner-asg"
}

# Instance: i-02a92f89d43898403
variable "instance_i_02a92f89d43898403_ami_id" {
  type        = string
  description = "AMI ID for i-02a92f89d43898403"
}
variable "instance_i_02a92f89d43898403_instance_type" {
  type        = string
  description = "Instance type for i-02a92f89d43898403"
}
variable "instance_i_02a92f89d43898403_subnet_id" {
  type        = string
  description = "Subnet ID for i-02a92f89d43898403"
}
variable "instance_i_02a92f89d43898403_vpc_security_group_ids" {
  type        = list(string)
  description = "Security group IDs for i-02a92f89d43898403"
}
variable "instance_i_02a92f89d43898403_key_name" {
  type        = string
  description = "Key name for i-02a92f89d43898403"
}
variable "instance_i_02a92f89d43898403_iam_instance_profile" {
  type        = string
  description = "IAM instance profile for i-02a92f89d43898403"
}
variable "instance_i_02a92f89d43898403_availability_zone" {
  type        = string
  description = "Availability zone for i-02a92f89d43898403"
}
variable "instance_i_02a92f89d43898403_source_dest_check" {
  type        = bool
  description = "Source/dest check for i-02a92f89d43898403"
}
variable "instance_i_02a92f89d43898403_tenancy" {
  type        = string
  description = "Tenancy for i-02a92f89d43898403"
}
variable "instance_i_02a92f89d43898403_monitoring" {
  type        = bool
  description = "Monitoring for i-02a92f89d43898403"
}
variable "instance_i_02a92f89d43898403_metadata_http_endpoint" {
  type        = string
  description = "Metadata http endpoint for i-02a92f89d43898403"
}
variable "instance_i_02a92f89d43898403_metadata_http_tokens" {
  type        = string
  description = "Metadata http tokens for i-02a92f89d43898403"
}
variable "instance_i_02a92f89d43898403_metadata_http_put_response_hop_limit" {
  type        = number
  description = "Metadata http put response hop limit for i-02a92f89d43898403"
}
variable "instance_i_02a92f89d43898403_metadata_http_protocol_ipv6" {
  type        = string
  description = "Metadata http protocol ipv6 for i-02a92f89d43898403"
}
variable "instance_i_02a92f89d43898403_metadata_instance_metadata_tags" {
  type        = string
  description = "Metadata instance metadata tags for i-02a92f89d43898403"
}
variable "instance_i_02a92f89d43898403_tags" {
  type        = map(string)
  description = "Tags for i-02a92f89d43898403"
}

# Network Interface: eni-0ae0ac032fb68be5b
variable "eni_0ae0ac032fb68be5b_subnet_id" {
  type        = string
  description = "Subnet ID for eni-0ae0ac032fb68be5b"
}
variable "eni_0ae0ac032fb68be5b_security_groups" {
  type        = list(string)
  description = "Security groups for eni-0ae0ac032fb68be5b"
}
variable "eni_0ae0ac032fb68be5b_source_dest_check" {
  type        = bool
  description = "Source/dest check for eni-0ae0ac032fb68be5b"
}
variable "eni_0ae0ac032fb68be5b_description" {
  type        = string
  description = "Description for eni-0ae0ac032fb68be5b"
}
variable "eni_0ae0ac032fb68be5b_tags" {
  type        = map(string)
  description = "Tags for eni-0ae0ac032fb68be5b"
}

# Network Interface: eni-03f18c266f4ca136e
variable "eni_03f18c266f4ca136e_subnet_id" {
  type        = string
  description = "Subnet ID for eni-03f18c266f4ca136e"
}
variable "eni_03f18c266f4ca136e_security_groups" {
  type        = list(string)
  description = "Security groups for eni-03f18c266f4ca136e"
}
variable "eni_03f18c266f4ca136e_source_dest_check" {
  type        = bool
  description = "Source/dest check for eni-03f18c266f4ca136e"
}
variable "eni_03f18c266f4ca136e_description" {
  type        = string
  description = "Description for eni-03f18c266f4ca136e"
}
variable "eni_03f18c266f4ca136e_tags" {
  type        = map(string)
  description = "Tags for eni-03f18c266f4ca136e"
}

# Network Interface: eni-0766757b2170188e5
variable "eni_0766757b2170188e5_subnet_id" {
  type        = string
  description = "Subnet ID for eni-0766757b2170188e5"
}
variable "eni_0766757b2170188e5_security_groups" {
  type        = list(string)
  description = "Security groups for eni-0766757b2170188e5"
}
variable "eni_0766757b2170188e5_source_dest_check" {
  type        = bool
  description = "Source/dest check for eni-0766757b2170188e5"
}
variable "eni_0766757b2170188e5_description" {
  type        = string
  description = "Description for eni-0766757b2170188e5"
}
variable "eni_0766757b2170188e5_tags" {
  type        = map(string)
  description = "Tags for eni-0766757b2170188e5"
}

# Network Interface: eni-09fd3101bc163327c
variable "eni_09fd3101bc163327c_subnet_id" {
  type        = string
  description = "Subnet ID for eni-09fd3101bc163327c"
}
variable "eni_09fd3101bc163327c_security_groups" {
  type        = list(string)
  description = "Security groups for eni-09fd3101bc163327c"
}
variable "eni_09fd3101bc163327c_source_dest_check" {
  type        = bool
  description = "Source/dest check for eni-09fd3101bc163327c"
}
variable "eni_09fd3101bc163327c_description" {
  type        = string
  description = "Description for eni-09fd3101bc163327c"
}
variable "eni_09fd3101bc163327c_tags" {
  type        = map(string)
  description = "Tags for eni-09fd3101bc163327c"
}

# Network Interface: eni-02228f5c1d152585c
variable "eni_02228f5c1d152585c_subnet_id" {
  type        = string
  description = "Subnet ID for eni-02228f5c1d152585c"
}
variable "eni_02228f5c1d152585c_security_groups" {
  type        = list(string)
  description = "Security groups for eni-02228f5c1d152585c"
}
variable "eni_02228f5c1d152585c_source_dest_check" {
  type        = bool
  description = "Source/dest check for eni-02228f5c1d152585c"
}
variable "eni_02228f5c1d152585c_description" {
  type        = string
  description = "Description for eni-02228f5c1d152585c"
}
variable "eni_02228f5c1d152585c_tags" {
  type        = map(string)
  description = "Tags for eni-02228f5c1d152585c"
}

# Network Interface: eni-0acba230c9dc664c3
variable "eni_0acba230c9dc664c3_subnet_id" {
  type        = string
  description = "Subnet ID for eni-0acba230c9dc664c3"
}
variable "eni_0acba230c9dc664c3_security_groups" {
  type        = list(string)
  description = "Security groups for eni-0acba230c9dc664c3"
}
variable "eni_0acba230c9dc664c3_source_dest_check" {
  type        = bool
  description = "Source/dest check for eni-0acba230c9dc664c3"
}
variable "eni_0acba230c9dc664c3_description" {
  type        = string
  description = "Description for eni-0acba230c9dc664c3"
}
variable "eni_0acba230c9dc664c3_tags" {
  type        = map(string)
  description = "Tags for eni-0acba230c9dc664c3"
}

# Network Interface: eni-0813c9b2d7953c6a0
variable "eni_0813c9b2d7953c6a0_subnet_id" {
  type        = string
  description = "Subnet ID for eni-0813c9b2d7953c6a0"
}
variable "eni_0813c9b2d7953c6a0_security_groups" {
  type        = list(string)
  description = "Security groups for eni-0813c9b2d7953c6a0"
}
variable "eni_0813c9b2d7953c6a0_source_dest_check" {
  type        = bool
  description = "Source/dest check for eni-0813c9b2d7953c6a0"
}
variable "eni_0813c9b2d7953c6a0_description" {
  type        = string
  description = "Description for eni-0813c9b2d7953c6a0"
}
variable "eni_0813c9b2d7953c6a0_tags" {
  type        = map(string)
  description = "Tags for eni-0813c9b2d7953c6a0"
}

# Network Interface: eni-0a59b1157f1536d50
variable "eni_0a59b1157f1536d50_subnet_id" {
  type        = string
  description = "Subnet ID for eni-0a59b1157f1536d50"
}
variable "eni_0a59b1157f1536d50_security_groups" {
  type        = list(string)
  description = "Security groups for eni-0a59b1157f1536d50"
}
variable "eni_0a59b1157f1536d50_source_dest_check" {
  type        = bool
  description = "Source/dest check for eni-0a59b1157f1536d50"
}
variable "eni_0a59b1157f1536d50_description" {
  type        = string
  description = "Description for eni-0a59b1157f1536d50"
}
variable "eni_0a59b1157f1536d50_tags" {
  type        = map(string)
  description = "Tags for eni-0a59b1157f1536d50"
}

# Network Interface: eni-0cde3d4209449554a
variable "eni_0cde3d4209449554a_subnet_id" {
  type        = string
  description = "Subnet ID for eni-0cde3d4209449554a"
}
variable "eni_0cde3d4209449554a_security_groups" {
  type        = list(string)
  description = "Security groups for eni-0cde3d4209449554a"
}
variable "eni_0cde3d4209449554a_source_dest_check" {
  type        = bool
  description = "Source/dest check for eni-0cde3d4209449554a"
}
variable "eni_0cde3d4209449554a_description" {
  type        = string
  description = "Description for eni-0cde3d4209449554a"
}
variable "eni_0cde3d4209449554a_tags" {
  type        = map(string)
  description = "Tags for eni-0cde3d4209449554a"
}

# Network Interface: eni-0ec9413e836fa1cad
variable "eni_0ec9413e836fa1cad_subnet_id" {
  type        = string
  description = "Subnet ID for eni-0ec9413e836fa1cad"
}
variable "eni_0ec9413e836fa1cad_security_groups" {
  type        = list(string)
  description = "Security groups for eni-0ec9413e836fa1cad"
}
variable "eni_0ec9413e836fa1cad_source_dest_check" {
  type        = bool
  description = "Source/dest check for eni-0ec9413e836fa1cad"
}
variable "eni_0ec9413e836fa1cad_description" {
  type        = string
  description = "Description for eni-0ec9413e836fa1cad"
}
variable "eni_0ec9413e836fa1cad_tags" {
  type        = map(string)
  description = "Tags for eni-0ec9413e836fa1cad"
}

# Network Interface: eni-055ce4572025a47de
variable "eni_055ce4572025a47de_subnet_id" {
  type        = string
  description = "Subnet ID for eni-055ce4572025a47de"
}
variable "eni_055ce4572025a47de_security_groups" {
  type        = list(string)
  description = "Security groups for eni-055ce4572025a47de"
}
variable "eni_055ce4572025a47de_source_dest_check" {
  type        = bool
  description = "Source/dest check for eni-055ce4572025a47de"
}
variable "eni_055ce4572025a47de_description" {
  type        = string
  description = "Description for eni-055ce4572025a47de"
}
variable "eni_055ce4572025a47de_tags" {
  type        = map(string)
  description = "Tags for eni-055ce4572025a47de"
}

# Network Interface: eni-0bbe8177077664b76
variable "eni_0bbe8177077664b76_subnet_id" {
  type        = string
  description = "Subnet ID for eni-0bbe8177077664b76"
}
variable "eni_0bbe8177077664b76_security_groups" {
  type        = list(string)
  description = "Security groups for eni-0bbe8177077664b76"
}
variable "eni_0bbe8177077664b76_source_dest_check" {
  type        = bool
  description = "Source/dest check for eni-0bbe8177077664b76"
}
variable "eni_0bbe8177077664b76_description" {
  type        = string
  description = "Description for eni-0bbe8177077664b76"
}
variable "eni_0bbe8177077664b76_tags" {
  type        = map(string)
  description = "Tags for eni-0bbe8177077664b76"
}

# Network Interface: eni-04c73891734b9a355
variable "eni_04c73891734b9a355_subnet_id" {
  type        = string
  description = "Subnet ID for eni-04c73891734b9a355"
}
variable "eni_04c73891734b9a355_security_groups" {
  type        = list(string)
  description = "Security groups for eni-04c73891734b9a355"
}
variable "eni_04c73891734b9a355_source_dest_check" {
  type        = bool
  description = "Source/dest check for eni-04c73891734b9a355"
}
variable "eni_04c73891734b9a355_description" {
  type        = string
  description = "Description for eni-04c73891734b9a355"
}
variable "eni_04c73891734b9a355_tags" {
  type        = map(string)
  description = "Tags for eni-04c73891734b9a355"
}

# Network Interface: eni-0611b2f378e918fd0
variable "eni_0611b2f378e918fd0_subnet_id" {
  type        = string
  description = "Subnet ID for eni-0611b2f378e918fd0"
}
variable "eni_0611b2f378e918fd0_security_groups" {
  type        = list(string)
  description = "Security groups for eni-0611b2f378e918fd0"
}
variable "eni_0611b2f378e918fd0_source_dest_check" {
  type        = bool
  description = "Source/dest check for eni-0611b2f378e918fd0"
}
variable "eni_0611b2f378e918fd0_description" {
  type        = string
  description = "Description for eni-0611b2f378e918fd0"
}
variable "eni_0611b2f378e918fd0_tags" {
  type        = map(string)
  description = "Tags for eni-0611b2f378e918fd0"
}

# Network Interface: eni-012b6b714b4087819
variable "eni_012b6b714b4087819_subnet_id" {
  type        = string
  description = "Subnet ID for eni-012b6b714b4087819"
}
variable "eni_012b6b714b4087819_security_groups" {
  type        = list(string)
  description = "Security groups for eni-012b6b714b4087819"
}
variable "eni_012b6b714b4087819_source_dest_check" {
  type        = bool
  description = "Source/dest check for eni-012b6b714b4087819"
}
variable "eni_012b6b714b4087819_description" {
  type        = string
  description = "Description for eni-012b6b714b4087819"
}
variable "eni_012b6b714b4087819_tags" {
  type        = map(string)
  description = "Tags for eni-012b6b714b4087819"
}

# Network Interface: eni-0e4a63f28d3282937
variable "eni_0e4a63f28d3282937_subnet_id" {
  type        = string
  description = "Subnet ID for eni-0e4a63f28d3282937"
}
variable "eni_0e4a63f28d3282937_security_groups" {
  type        = list(string)
  description = "Security groups for eni-0e4a63f28d3282937"
}
variable "eni_0e4a63f28d3282937_source_dest_check" {
  type        = bool
  description = "Source/dest check for eni-0e4a63f28d3282937"
}
variable "eni_0e4a63f28d3282937_description" {
  type        = string
  description = "Description for eni-0e4a63f28d3282937"
}
variable "eni_0e4a63f28d3282937_tags" {
  type        = map(string)
  description = "Tags for eni-0e4a63f28d3282937"
}

# Network Interface: eni-02ae1c010789846b8
variable "eni_02ae1c010789846b8_subnet_id" {
  type        = string
  description = "Subnet ID for eni-02ae1c010789846b8"
}
variable "eni_02ae1c010789846b8_security_groups" {
  type        = list(string)
  description = "Security groups for eni-02ae1c010789846b8"
}
variable "eni_02ae1c010789846b8_source_dest_check" {
  type        = bool
  description = "Source/dest check for eni-02ae1c010789846b8"
}
variable "eni_02ae1c010789846b8_description" {
  type        = string
  description = "Description for eni-02ae1c010789846b8"
}
variable "eni_02ae1c010789846b8_tags" {
  type        = map(string)
  description = "Tags for eni-02ae1c010789846b8"
}

# Network Interface: eni-0419e64531f4b1e19
variable "eni_0419e64531f4b1e19_subnet_id" {
  type        = string
  description = "Subnet ID for eni-0419e64531f4b1e19"
}
variable "eni_0419e64531f4b1e19_security_groups" {
  type        = list(string)
  description = "Security groups for eni-0419e64531f4b1e19"
}
variable "eni_0419e64531f4b1e19_source_dest_check" {
  type        = bool
  description = "Source/dest check for eni-0419e64531f4b1e19"
}
variable "eni_0419e64531f4b1e19_description" {
  type        = string
  description = "Description for eni-0419e64531f4b1e19"
}
variable "eni_0419e64531f4b1e19_tags" {
  type        = map(string)
  description = "Tags for eni-0419e64531f4b1e19"
}

# Network Interface: eni-06111e22ea34335a6
variable "eni_06111e22ea34335a6_subnet_id" {
  type        = string
  description = "Subnet ID for eni-06111e22ea34335a6"
}
variable "eni_06111e22ea34335a6_security_groups" {
  type        = list(string)
  description = "Security groups for eni-06111e22ea34335a6"
}
variable "eni_06111e22ea34335a6_source_dest_check" {
  type        = bool
  description = "Source/dest check for eni-06111e22ea34335a6"
}
variable "eni_06111e22ea34335a6_description" {
  type        = string
  description = "Description for eni-06111e22ea34335a6"
}
variable "eni_06111e22ea34335a6_tags" {
  type        = map(string)
  description = "Tags for eni-06111e22ea34335a6"
}

# Network Interface: eni-0d738514adbd9a62b
variable "eni_0d738514adbd9a62b_subnet_id" {
  type        = string
  description = "Subnet ID for eni-0d738514adbd9a62b"
}
variable "eni_0d738514adbd9a62b_security_groups" {
  type        = list(string)
  description = "Security groups for eni-0d738514adbd9a62b"
}
variable "eni_0d738514adbd9a62b_source_dest_check" {
  type        = bool
  description = "Source/dest check for eni-0d738514adbd9a62b"
}
variable "eni_0d738514adbd9a62b_description" {
  type        = string
  description = "Description for eni-0d738514adbd9a62b"
}
variable "eni_0d738514adbd9a62b_tags" {
  type        = map(string)
  description = "Tags for eni-0d738514adbd9a62b"
}