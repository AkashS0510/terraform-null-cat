region = "us-east-1"

iam_instance_profile_name = "sg-private-runner-connector"
iam_instance_profile_path = "/"
iam_instance_profile_role = "sg-private-runner-connector"

key_pair_key_name   = "aplattel-private-runner"
key_pair_public_key = ""

instance_ami                                     = "ami-0157af9aea2eef346"
instance_instance_type                           = "t2.medium"
instance_availability_zone                       = "us-east-1c"
instance_ebs_optimized                           = false
instance_source_dest_check                       = true
instance_tenancy                                 = "default"
instance_monitoring                              = false
instance_vpc_security_group_ids                  = ["sg-00bd4bcd7401c8585"]
instance_subnet_id                               = "subnet-0029ac825e009c664"
instance_capacity_reservation_preference         = "open"
instance_cpu_core_count                          = 2
instance_cpu_threads_per_core                    = 1
instance_enclave_options_enabled                 = false
instance_metadata_http_endpoint                  = "enabled"
instance_metadata_http_protocol_ipv6             = "disabled"
instance_metadata_http_put_response_hop_limit    = 2
instance_metadata_http_tokens                    = "required"
instance_metadata_instance_metadata_tags         = "disabled"
instance_root_block_device_delete_on_termination = true
instance_tags = {
  Name = "aplattel-sg-private-runner"
}

eni_subnet_id         = "subnet-0029ac825e009c664"
eni_private_ips       = ["172.31.20.246"]
eni_security_groups   = ["sg-00bd4bcd7401c8585"]
eni_source_dest_check = true
eni_device_index      = 0