# EC2 Instances with Profiles and Key Pairs

## Stack Description

This stack manages EC2 instances with associated IAM instance profiles, key pairs, and network interfaces across multiple AWS accounts and regions. It provides a modular approach to managing compute infrastructure with proper IAM roles, SSH key pairs, and network interface configurations.

## Module Overview

| Module | Description | Source |
|--------|-------------|--------|
| `instance` | Manages an EC2 instance with optional IAM instance profile, key pair, metadata options, and monitoring | `./modules/instance` |
| `iam_instance_profile` | Manages an IAM instance profile with an associated role | `./modules/iam_instance_profile` |
| `key_pair` | Manages an EC2 key pair | `./modules/key_pair` |
| `network_interface` | Manages an ENI attached to an EC2 instance | `./modules/network_interface` |

## Resources Managed

### IAM Instance Profiles (5)
- `ec2_private_runner_role`
- `AmazonEC2ContainerServiceforEC2Role`
- `eks-fece5f1f-94cc-37f3-cca2-2de45fbc88e4`
- `sg-private-runner-connector`
- `Neha_Private_Runner-runner-instance-profile`

### Key Pairs (8)
- `private-runner-workshop`
- `nonprod-euc1`
- `taher-private-runner`
- `aplattel-private-runner`
- `ec2-key-k3ehbblq`
- `ec2-key-ss7d1dui`
- `ec2-key-16n94g2h`
- `adis-key-pair`

### EC2 Instances (19)
- `private-runner-do-not-delete` (i-08663188cc77a9249)
- `ecs-instances-admin-workflow-qa` (i-010c68975b065af78)
- `managed-node` (i-0b86bd1d36a4864dd)
- `privat-runner` (i-0238c2160a7ed790b)
- `liveeo-private-replica-debug` (i-02b8df1061631c9af)
- `i-0334fc9f1f177c10f`
- `demo-org-prepare-release-branch-testing` (i-027d8fe8a296f4dd8)
- `taher-private-runner-amz` (i-01494deda99ac7624)
- `aplattel-sg-private-runner` (i-078af6ee78e348aa8)
- `i-000e597ea8aa8260b`
- `i-007e6212f82fd1d38`
- `i-00af4198af591318c`
- `i-015dcccda629ac122`
- `test-instance` (i-02a10aea23a6805fa)
- `private-runner` (i-03f9eabf9ac5d102f)
- `i-0439c48efdf4ad956`
- `i-01a58b9fe5e4d0c3c`
- `Neha_Private_Runner-private-runner-asg` (i-025853cd4314ab1f9)
- `i-02a92f89d43898403`

### Network Interfaces (20)
- eni-0ae0ac032fb68be5b through eni-0d738514adbd9a62b

## Variables Reference

All variables are declared in `variables.tf`. Key variable patterns:

- `iam_instance_profile_<name>_name/path/role` — IAM instance profile configuration
- `key_pair_<name>_key_name/public_key` — Key pair configuration (public_key is sensitive)
- `instance_<name>_ami_id/instance_type/subnet_id/...` — EC2 instance configuration
- `eni_<id>_subnet_id/security_groups/source_dest_check/description/tags` — ENI configuration

## Outputs Reference

| Output | Description |
|--------|-------------|
| `iam_instance_profile_*_arn` | ARN of each IAM instance profile |
| `instance_*_id` | ID of each EC2 instance |

## Usage Instructions

### 1. Initialize

```sh
terraform init
```

### 2. Import existing resources

```sh
./imports.sh terraform
# or with OpenTofu:
./imports.sh tofu
```

### 3. Plan

```sh
terraform plan -var-file environments/sg.tfvars
```

### 4. Apply

```sh
terraform apply -var-file environments/sg.tfvars
```

## Notes

- Public key values for key pairs are intentionally left empty in tfvars as the AWS API does not return public key material after creation. After import, `terraform plan` will show a diff for key pairs — this is expected behavior per the AWS provider documentation.
- The `aplattel-sg-private-runner` instance is in `us-east-1c`, which differs from the default region `eu-central-1`. Ensure appropriate provider aliases or account configurations if managing cross-region resources.