# aws-network-compute-infrastructure

## Description

Multi-VPC network infrastructure including VPCs, subnets, internet gateways, route tables, security groups, EC2 instance, and Athena workgroup in eu-central-1.

## Module Overview

| Module | Description | Resource Type |
|--------|-------------|---------------|
| `vpc` | Manages AWS VPCs | `aws_vpc` |
| `internet_gateway` | Manages AWS Internet Gateways | `aws_internet_gateway` |
| `subnet` | Manages AWS Subnets | `aws_subnet` |
| `route_table` | Manages AWS Route Tables | `aws_route_table` |
| `security_group` | Manages AWS Security Groups | `aws_security_group` |
| `instance` | Manages a single EC2 instance | `aws_instance` |
| `athena_workgroup` | Manages a single Athena workgroup | `aws_athena_workgroup` |

## Variables Reference

| Variable | Type | Description |
|----------|------|-------------|
| `region` | `string` | AWS region |
| `vpcs` | `map(object)` | Map of VPCs to create |
| `internet_gateways` | `map(object)` | Map of internet gateways to create |
| `subnets` | `map(object)` | Map of subnets to create |
| `route_tables` | `map(object)` | Map of route tables to create |
| `security_groups` | `map(object)` | Map of security groups to create |
| `instance_ami` | `string` | AMI ID for the instance |
| `instance_instance_type` | `string` | Instance type |
| `instance_key_name` | `string` | Key pair name |
| `instance_subnet_id` | `string` | Subnet ID for the instance |
| `instance_vpc_security_group_ids` | `list(string)` | List of security group IDs |
| `instance_availability_zone` | `string` | Availability zone for the instance |
| `instance_source_dest_check` | `bool` | Whether to enable source/destination check |
| `instance_ebs_optimized` | `bool` | Whether the instance is EBS optimized |
| `instance_tenancy` | `string` | Tenancy of the instance |
| `instance_metadata_http_endpoint` | `string` | Whether the metadata service is available |
| `instance_metadata_http_protocol_ipv6` | `string` | Whether the IPv6 endpoint for IMDS is enabled |
| `instance_metadata_http_put_response_hop_limit` | `number` | HTTP PUT response hop limit |
| `instance_metadata_http_tokens` | `string` | Whether session tokens are required for IMDS |
| `instance_metadata_instance_metadata_tags` | `string` | Whether instance tags are accessible via IMDS |
| `athena_workgroup_name` | `string` | Name of the Athena workgroup |
| `athena_workgroup_state` | `string` | State of the workgroup |
| `athena_workgroup_enforce_workgroup_configuration` | `bool` | Whether workgroup settings override client-side settings |
| `athena_workgroup_publish_cloudwatch_metrics_enabled` | `bool` | Whether CloudWatch metrics are enabled |
| `athena_workgroup_requester_pays_enabled` | `bool` | Whether requester pays is enabled |
| `athena_workgroup_selected_engine_version` | `string` | Selected Athena engine version |

## Outputs Reference

| Output | Description |
|--------|-------------|
| `vpc_sg_vpc_amit_id` | ID of the sg-vpc-amit VPC |
| `vpc_basic_eks_id` | ID of the basic-eks VPC |
| `vpc_vpc_rp_id` | ID of the vpc-rp VPC |
| `athena_workgroup_id` | ID of the Athena workgroup |
| `instance_id` | ID of the EC2 instance |

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