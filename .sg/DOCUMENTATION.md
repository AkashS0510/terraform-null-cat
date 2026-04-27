# aplattel-sg-private-runner-stack

## Description

EC2 instance for private runner with associated IAM instance profile, key pair, and network interface. Deployed in `us-east-1`.

## Architecture Overview

```
┌─────────────────────────────────────────────────────┐
│                    Root Module                      │
│                                                     │
│  ┌──────────────────┐   ┌──────────────────────┐   │
│  │ iam_instance_    │   │     key_pair         │   │
│  │ profile module   │   │     module           │   │
│  │                  │   │                      │   │
│  │ aws_iam_instance │   │ aws_key_pair.this    │   │
│  │ _profile.this    │   │                      │   │
│  └────────┬─────────┘   └──────────┬───────────┘   │
│           │ .name                  │ .key_name      │
│           ▼                        ▼                │
│  ┌──────────────────────────────────────────────┐   │
│  │              instance module                 │   │
│  │           aws_instance.this                  │   │
│  └──────────────────────┬───────────────────────┘   │
│                         │ .id                       │
│                         ▼                           │
│  ┌──────────────────────────────────────────────┐   │
│  │          network_interface module            │   │
│  │        aws_network_interface.this            │   │
│  └──────────────────────────────────────────────┘   │
└─────────────────────────────────────────────────────┘
```

## Modules

| Module | Path | Description |
|--------|------|-------------|
| `iam_instance_profile` | `modules/iam_instance_profile` | Manages the IAM instance profile for the private runner |
| `key_pair` | `modules/key_pair` | Manages the key pair for the private runner |
| `instance` | `modules/instance` | Manages the EC2 instance for the private runner |
| `network_interface` | `modules/network_interface` | Manages the primary network interface for the private runner instance |

## Resources

| Resource | Module | Description |
|----------|--------|-------------|
| `aws_iam_instance_profile.this` | `iam_instance_profile` | IAM instance profile `sg-private-runner-connector` |
| `aws_key_pair.this` | `key_pair` | Key pair `aplattel-private-runner` |
| `aws_instance.this` | `instance` | EC2 instance `i-078af6ee78e348aa8` (t2.medium) |
| `aws_network_interface.this` | `network_interface` | ENI `eni-0ec9413e836fa1cad` attached to the instance |

## Variables Reference

| Variable | Type | Description | Default |
|----------|------|-------------|---------|
| `region` | `string` | AWS region | `us-east-1` |
| `iam_instance_profile_name` | `string` | Name of the IAM instance profile | `sg-private-runner-connector` |
| `iam_instance_profile_path` | `string` | Path for the IAM instance profile | `/` |
| `iam_instance_profile_role` | `string` | IAM role name for the instance profile | `sg-private-runner-connector` |
| `key_pair_key_name` | `string` | Name of the key pair | `aplattel-private-runner` |
| `key_pair_public_key` | `string` *(sensitive)* | Public key material | *(required)* |
| `instance_ami` | `string` | AMI ID | `ami-0157af9aea2eef346` |
| `instance_instance_type` | `string` | EC2 instance type | `t2.medium` |
| `instance_availability_zone` | `string` | Availability zone | `us-east-1c` |
| `instance_ebs_optimized` | `bool` | EBS optimized | `false` |
| `instance_source_dest_check` | `bool` | Source/dest check | `true` |
| `instance_tenancy` | `string` | Instance tenancy | `default` |
| `instance_monitoring` | `bool` | Detailed monitoring | `false` |
| `instance_vpc_security_group_ids` | `list(string)` | Security group IDs | `["sg-00bd4bcd7401c8585"]` |
| `instance_subnet_id` | `string` | Subnet ID | `subnet-0029ac825e009c664` |
| `instance_capacity_reservation_preference` | `string` | Capacity reservation preference | `open` |
| `instance_cpu_core_count` | `number` | CPU core count | `2` |
| `instance_cpu_threads_per_core` | `number` | Threads per core | `1` |
| `instance_enclave_options_enabled` | `bool` | Nitro Enclaves enabled | `false` |
| `instance_metadata_http_endpoint` | `string` | Metadata HTTP endpoint | `enabled` |
| `instance_metadata_http_protocol_ipv6` | `string` | Metadata IPv6 protocol | `disabled` |
| `instance_metadata_http_put_response_hop_limit` | `number` | Metadata hop limit | `2` |
| `instance_metadata_http_tokens` | `string` | Metadata token requirement | `required` |
| `instance_metadata_instance_metadata_tags` | `string` | Instance metadata tags | `disabled` |
| `instance_root_block_device_delete_on_termination` | `bool` | Delete root volume on termination | `true` |
| `instance_tags` | `map(string)` | Instance tags | `{Name = "aplattel-sg-private-runner"}` |
| `eni_subnet_id` | `string` | ENI subnet ID | `subnet-0029ac825e009c664` |
| `eni_private_ips` | `list(string)` | ENI private IPs | `["172.31.20.246"]` |
| `eni_security_groups` | `list(string)` | ENI security groups | `["sg-00bd4bcd7401c8585"]` |
| `eni_source_dest_check` | `bool` | ENI source/dest check | `true` |
| `eni_device_index` | `number` | ENI device index | `0` |

## Outputs Reference

| Output | Description |
|--------|-------------|
| `instance_id` | ID of the EC2 instance |
| `instance_arn` | ARN of the EC2 instance |
| `iam_instance_profile_name` | Name of the IAM instance profile |
| `iam_instance_profile_arn` | ARN of the IAM instance profile |
| `key_pair_key_name` | Name of the key pair |
| `network_interface_id` | ID of the network interface |

## Usage Instructions

### Prerequisites

- Terraform >= 1.5.0 or OpenTofu >= 1.6.0
- AWS credentials configured (environment variables, shared credentials file, or IAM role)
- Appropriate IAM permissions for EC2, IAM, and networking resources

### 1. Initialize

```sh
terraform init
# or
tofu init
```

### 2. Import Existing Resources

```sh
chmod +x imports.sh
./imports.sh terraform
# or
./imports.sh tofu
```

### 3. Plan (verify zero drift)

```sh
terraform plan -var-file environments/sg.tfvars
# or
tofu plan -var-file environments/sg.tfvars
```

After import, the plan should show **no changes**.

### 4. Apply (if changes are needed)

```sh
terraform apply -var-file environments/sg.tfvars
# or
tofu apply -var-file environments/sg.tfvars
```

### Notes

- The `key_pair_public_key` variable is sensitive. Provide it via `-var` flag or a secrets manager rather than storing it in `sg.tfvars`.
- The `aws_key_pair` resource does not expose the public key via the AWS API after creation; importing it will show a diff on `public_key`. Ensure the correct public key is provided before applying.