# taher-private-runner-infrastructure

## Description

EC2 instance with associated key pair and network interface for taher-private-runner-ubuntu. This stack provisions an SSH key pair, a primary Elastic Network Interface (ENI), and an EC2 instance in the `eu-central-1` region.

## Module Overview

| Module | Description |
|--------|-------------|
| `key_pair` | Manages the taher-private-runner SSH key pair |
| `network_interface` | Manages the primary ENI attached to the taher-private-runner-ubuntu instance |
| `instance` | Manages the taher-private-runner-ubuntu EC2 instance |

## Variables Reference

| Variable | Type | Description | Default |
|----------|------|-------------|---------|
| `region` | `string` | AWS region | `eu-central-1` |
| `key_pair_key_name` | `string` | The name for the key pair | `taher-private-runner` |
| `key_pair_public_key` | `string` | The public key material (sensitive) | `""` |
| `network_interface_subnet_id` | `string` | Subnet ID in which the ENI resides | `subnet-072669658da496c4a` |
| `network_interface_private_ips` | `list(string)` | List of private IPs assigned to the ENI | `["10.0.0.52"]` |
| `network_interface_security_groups` | `list(string)` | List of security group IDs assigned to the ENI | `["sg-092a5ff991a0802bc"]` |
| `network_interface_source_dest_check` | `bool` | Whether source/destination check is enabled on the ENI | `true` |
| `network_interface_device_index` | `number` | Device index of the ENI attachment | `0` |
| `instance_ami` | `string` | AMI ID to use for the instance | `ami-03250b0e01c28d196` |
| `instance_instance_type` | `string` | EC2 instance type | `t2.medium` |
| `instance_availability_zone` | `string` | Availability zone for the instance | `eu-central-1a` |
| `instance_vpc_security_group_ids` | `list(string)` | List of security group IDs to associate with the instance | `["sg-092a5ff991a0802bc"]` |
| `instance_subnet_id` | `string` | VPC subnet ID to launch the instance in | `subnet-072669658da496c4a` |
| `instance_source_dest_check` | `bool` | Whether source/destination check is enabled on the instance | `true` |
| `instance_tenancy` | `string` | Tenancy of the instance | `default` |
| `instance_ebs_optimized` | `bool` | Whether the instance is EBS-optimized | `false` |
| `instance_monitoring` | `bool` | Whether detailed monitoring is enabled | `false` |
| `instance_capacity_reservation_preference` | `string` | Capacity reservation preference for the instance | `open` |
| `instance_metadata_http_endpoint` | `string` | Whether the metadata service is available | `enabled` |
| `instance_metadata_http_protocol_ipv6` | `string` | Whether the IPv6 endpoint for IMDS is enabled | `disabled` |
| `instance_metadata_http_put_response_hop_limit` | `number` | HTTP PUT response hop limit for instance metadata requests | `2` |
| `instance_metadata_http_tokens` | `string` | Whether IMDSv2 session tokens are required | `required` |
| `instance_metadata_instance_metadata_tags` | `string` | Whether access to instance tags from IMDS is enabled | `disabled` |
| `instance_enclave_options_enabled` | `bool` | Whether Nitro Enclaves are enabled | `false` |
| `instance_root_block_device_delete_on_termination` | `bool` | Whether the root volume is deleted on instance termination | `true` |
| `instance_name_tag` | `string` | Name tag for the instance | `taher-private-runner-ubuntu` |

## Outputs Reference

| Output | Description |
|--------|-------------|
| `instance_id` | ID of the EC2 instance |
| `instance_private_ip` | Private IP address of the EC2 instance |
| `network_interface_id` | ID of the network interface |
| `key_pair_key_name` | Name of the key pair |

## Usage Instructions

### 1. Initialize

```sh
terraform init
```

### 2. Import existing resources

```sh
chmod +x imports.sh
./imports.sh terraform
# or for OpenTofu:
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

- The `key_pair_public_key` variable is sensitive. Set it via an environment variable or a secrets manager rather than committing the value to source control:
  ```sh
  export TF_VAR_key_pair_public_key="ssh-rsa AAAA..."
  ```
- The AWS API does not return the public key after creation, so Terraform may attempt to replace the key pair on plan. Ensure the correct public key is provided to avoid unintended replacement.
- The network interface module depends on the instance module output (`instance_id`) for the ENI attachment. Terraform will automatically order the creation/import accordingly.