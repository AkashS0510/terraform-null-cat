# taher-private-runner-stack

## Description

EC2 instance with key pair and network interface for taher-private-runner-ubuntu. This stack provisions an AWS EC2 instance (`t2.medium`) in `eu-central-1a`, along with its associated key pair and primary Elastic Network Interface (ENI).

## Module Overview

| Module | Description |
|--------|-------------|
| `key_pair` | Manages the `taher-private-runner` key pair used for SSH access to the instance |
| `network_interface` | Manages the primary ENI for the `taher-private-runner-ubuntu` instance |
| `instance` | Manages the `taher-private-runner-ubuntu` EC2 instance |

## Variables Reference

| Variable | Type | Description | Default |
|----------|------|-------------|---------|
| `region` | string | AWS region | `eu-central-1` |
| `key_pair_key_name` | string | Name of the key pair | `taher-private-runner` |
| `key_pair_public_key` | string | Public key material for the key pair | `""` |
| `network_interface_subnet_id` | string | Subnet ID for the network interface | `subnet-072669658da496c4a` |
| `network_interface_private_ip_address` | string | Primary private IP address for the network interface | `10.0.0.52` |
| `network_interface_security_group_id` | string | Security group ID to assign to the network interface | `sg-092a5ff991a0802bc` |
| `network_interface_source_dest_check` | bool | Whether to enable source/destination check on the ENI | `true` |
| `instance_ami` | string | AMI ID to use for the instance | `ami-03250b0e01c28d196` |
| `instance_instance_type` | string | EC2 instance type | `t2.medium` |
| `instance_availability_zone` | string | Availability zone to launch the instance in | `eu-central-1a` |
| `instance_subnet_id` | string | Subnet ID to launch the instance in | `subnet-072669658da496c4a` |
| `instance_security_group_id` | string | Security group ID to associate with the instance | `sg-092a5ff991a0802bc` |
| `instance_source_dest_check` | bool | Whether to enable source/destination check | `true` |
| `instance_ebs_optimized` | bool | Whether the instance is EBS-optimized | `false` |
| `instance_monitoring` | bool | Whether detailed monitoring is enabled | `false` |
| `instance_tenancy` | string | Tenancy of the instance | `default` |
| `instance_metadata_http_endpoint` | string | Whether the metadata service is available | `enabled` |
| `instance_metadata_http_protocol_ipv6` | string | Whether the IPv6 endpoint for instance metadata service is enabled | `disabled` |
| `instance_metadata_http_put_response_hop_limit` | number | HTTP PUT response hop limit for instance metadata requests | `2` |
| `instance_metadata_http_tokens` | string | Whether the metadata service requires session tokens (IMDSv2) | `required` |
| `instance_metadata_instance_metadata_tags` | string | Whether access to instance tags from metadata service is enabled | `disabled` |
| `instance_capacity_reservation_preference` | string | Capacity reservation preference for the instance | `open` |
| `instance_enclave_options_enabled` | bool | Whether Nitro Enclaves are enabled | `false` |
| `instance_root_block_device_delete_on_termination` | bool | Whether the root volume is deleted on instance termination | `true` |
| `instance_name_tag` | string | Name tag for the instance | `taher-private-runner-ubuntu` |

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

- The `key_pair_public_key` variable must be set to the actual public key material before applying, as the AWS API does not return the public key after creation. Without the correct value, Terraform will attempt to replace the key pair.
- The network interface and instance share the same subnet and security group.
- IMDSv2 (`http_tokens = "required"`) is enforced on the instance for enhanced security.