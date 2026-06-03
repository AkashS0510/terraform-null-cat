# ec2-instances-and-profiles

EC2 instances, IAM instance profiles, key pairs, and network interfaces across multiple environments

## Stack Overview

This stack manages a collection of EC2 instances with their associated IAM instance profiles, EC2 key pairs, and network interfaces deployed in the `eu-central-1` region.

## Module Overview

| Module | Description |
|--------|-------------|
| `modules/instance` | Manages an EC2 instance with its associated IAM instance profile, key pair, and primary network interface |
| `modules/iam_instance_profile` | Manages an IAM instance profile with an associated role |
| `modules/key_pair` | Manages an EC2 key pair |
| `modules/network_interface` | Manages an EC2 network interface |

## Variables Reference

| Variable | Type | Description |
|----------|------|-------------|
| `region` | `string` | AWS region |
| `instances` | `map(object(...))` | Map of EC2 instance configurations |
| `iam_instance_profiles` | `map(object(...))` | Map of IAM instance profile configurations |
| `key_pairs` | `map(object(...))` | Map of key pair configurations |
| `network_interfaces` | `map(object(...))` | Map of network interface configurations |

## Outputs Reference

| Output | Description |
|--------|-------------|
| `instance_private_runner_do_not_delete_id` | Instance ID of private_runner_do_not_delete |
| `instance_managed_node_id` | Instance ID of managed_node |
| `instance_aplattel_sg_private_runner_id` | Instance ID of aplattel_sg_private_runner |
| `instance_i_000e597ea8aa8260b_id` | Instance ID of i_000e597ea8aa8260b |
| `instance_i_007e6212f82fd1d38_id` | Instance ID of i_007e6212f82fd1d38 |
| `instance_i_00af4198af591318c_id` | Instance ID of i_00af4198af591318c |
| `instance_ecs_instances_admin_workflow_qa_id` | Instance ID of ecs_instances_admin_workflow_qa |
| `instance_taher_private_runner_amz_id` | Instance ID of taher_private_runner_amz |
| `instance_i_015dcccda629ac122_id` | Instance ID of i_015dcccda629ac122 |
| `instance_i_01a58b9fe5e4d0c3c_id` | Instance ID of i_01a58b9fe5e4d0c3c |
| `instance_privat_runner_id` | Instance ID of privat_runner |
| `instance_neha_private_runner_asg_id` | Instance ID of neha_private_runner_asg |
| `instance_demo_org_prepare_release_branch_testing_id` | Instance ID of demo_org_prepare_release_branch_testing |
| `instance_test_instance_id` | Instance ID of test_instance |
| `instance_i_02a92f89d43898403_id` | Instance ID of i_02a92f89d43898403 |
| `instance_liveeo_private_replica_debug_id` | Instance ID of liveeo_private_replica_debug |
| `instance_i_0312a14319779a1f4_id` | Instance ID of i_0312a14319779a1f4 |
| `iam_instance_profile_ec2_private_runner_role_arn` | ARN of ec2_private_runner_role instance profile |
| `iam_instance_profile_eks_fece5f1f_arn` | ARN of eks_fece5f1f instance profile |
| `iam_instance_profile_sg_private_runner_connector_arn` | ARN of sg_private_runner_connector instance profile |
| `iam_instance_profile_amazon_ec2_container_service_role_arn` | ARN of amazon_ec2_container_service_role instance profile |
| `iam_instance_profile_neha_private_runner_arn` | ARN of neha_private_runner instance profile |

## Usage Instructions

### Prerequisites

- Terraform >= 1.5.0 or OpenTofu >= 1.6.0
- AWS credentials configured
- Existing AWS resources to import

### Steps

1. **Initialize**
   ```sh
   terraform init
   # or
   tofu init
   ```

2. **Import existing resources**
   ```sh
   bash imports.sh terraform
   # or
   bash imports.sh tofu
   ```

3. **Plan** (verify zero drift after import)
   ```sh
   terraform plan -var-file environments/sg.tfvars
   # or
   tofu plan -var-file environments/sg.tfvars
   ```

4. **Apply** (if changes are needed)
   ```sh
   terraform apply -var-file environments/sg.tfvars
   # or
   tofu apply -var-file environments/sg.tfvars
   ```

### Notes

- Key pair `public_key` values are set to `PLACEHOLDER_PROVIDE_PUBLIC_KEY` — replace with actual public key material before applying.
- The AWS provider does not return public key material via API, so key pairs will show a diff after import. This is expected behavior per provider documentation.
- IAM instance profiles for instances with cross-module wiring (`private_runner_do_not_delete`, `managed_node`, `aplattel_sg_private_runner`, `ecs_instances_admin_workflow_qa`, `neha_private_runner_private_runner_asg`) are resolved via module outputs.