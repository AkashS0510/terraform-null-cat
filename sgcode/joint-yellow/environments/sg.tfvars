region = "eu-central-1"

vpcs = {
  sg_vpc_amit = {
    cidr_block       = "10.0.0.0/16"
    instance_tenancy = "default"
    tags = {
      Name = "sg-vpc-amit"
    }
  }
  basic_eks = {
    cidr_block       = "10.0.0.0/16"
    instance_tenancy = "default"
    tags = {
      Name = "basic-eks"
    }
  }
  vpc_rp = {
    cidr_block       = "10.0.0.0/16"
    instance_tenancy = "default"
    tags = {
      Name = "vpc-rp"
    }
  }
}

internet_gateways = {
  basic_eks = {
    vpc_id = "vpc-046e4c08ba6dbab3d"
    tags = {
      Name = "basic-eks"
    }
  }
  vpc_rp = {
    vpc_id = "vpc-07982d303cf990a25"
    tags = {
      Name = "vpc-rp"
    }
  }
  sg_vpc_amit = {
    vpc_id = "vpc-0300246a0c7a5c8f9"
    tags = {
      Name = "sg-vpc-amit"
    }
  }
}

subnets = {
  sg_vpc_amit_private_eu_central_1a = {
    vpc_id                          = "vpc-0300246a0c7a5c8f9"
    cidr_block                      = "10.0.110.0/24"
    availability_zone               = "eu-central-1a"
    map_public_ip_on_launch         = false
    assign_ipv6_address_on_creation = false
    tags = {
      Name = "sg-vpc-amit-private-eu-central-1a"
    }
  }
  vpc_rp_public_eu_central_1a = {
    vpc_id                          = "vpc-07982d303cf990a25"
    cidr_block                      = "10.0.1.0/24"
    availability_zone               = "eu-central-1a"
    map_public_ip_on_launch         = true
    assign_ipv6_address_on_creation = false
    tags = {
      Name = "vpc-rp-public-eu-central-1a"
    }
  }
  basic_eks_public_eu_central_1b = {
    vpc_id                          = "vpc-046e4c08ba6dbab3d"
    cidr_block                      = "10.0.101.0/24"
    availability_zone               = "eu-central-1b"
    map_public_ip_on_launch         = false
    assign_ipv6_address_on_creation = false
    tags = {
      "kubernetes.io/role/elb" = "1"
      Name                     = "basic-eks-public-eu-central-1b"
    }
  }
  basic_eks_private_eu_central_1b = {
    vpc_id                          = "vpc-046e4c08ba6dbab3d"
    cidr_block                      = "10.0.1.0/24"
    availability_zone               = "eu-central-1b"
    map_public_ip_on_launch         = false
    assign_ipv6_address_on_creation = false
    tags = {
      "kubernetes.io/role/internal-elb" = "1"
      Name                              = "basic-eks-private-eu-central-1b"
    }
  }
  sg_vpc_amit_public_eu_central_1b = {
    vpc_id                          = "vpc-0300246a0c7a5c8f9"
    cidr_block                      = "10.0.2.0/24"
    availability_zone               = "eu-central-1b"
    map_public_ip_on_launch         = true
    assign_ipv6_address_on_creation = false
    tags = {
      Name = "sg-vpc-amit-public-eu-central-1b"
    }
  }
  basic_eks_public_eu_central_1a = {
    vpc_id                          = "vpc-046e4c08ba6dbab3d"
    cidr_block                      = "10.0.100.0/24"
    availability_zone               = "eu-central-1a"
    map_public_ip_on_launch         = false
    assign_ipv6_address_on_creation = false
    tags = {
      "kubernetes.io/role/elb" = "1"
      Name                     = "basic-eks-public-eu-central-1a"
    }
  }
  vpc_rp_public_eu_central_1b = {
    vpc_id                          = "vpc-07982d303cf990a25"
    cidr_block                      = "10.0.2.0/24"
    availability_zone               = "eu-central-1b"
    map_public_ip_on_launch         = true
    assign_ipv6_address_on_creation = false
    tags = {
      Name = "vpc-rp-public-eu-central-1b"
    }
  }
  basic_eks_private_eu_central_1c = {
    vpc_id                          = "vpc-046e4c08ba6dbab3d"
    cidr_block                      = "10.0.2.0/24"
    availability_zone               = "eu-central-1c"
    map_public_ip_on_launch         = false
    assign_ipv6_address_on_creation = false
    tags = {
      "kubernetes.io/role/internal-elb" = "1"
      Name                              = "basic-eks-private-eu-central-1c"
    }
  }
  basic_eks_public_eu_central_1c = {
    vpc_id                          = "vpc-046e4c08ba6dbab3d"
    cidr_block                      = "10.0.102.0/24"
    availability_zone               = "eu-central-1c"
    map_public_ip_on_launch         = false
    assign_ipv6_address_on_creation = false
    tags = {
      "kubernetes.io/role/elb" = "1"
      Name                     = "basic-eks-public-eu-central-1c"
    }
  }
  basic_eks_private_eu_central_1a = {
    vpc_id                          = "vpc-046e4c08ba6dbab3d"
    cidr_block                      = "10.0.0.0/24"
    availability_zone               = "eu-central-1a"
    map_public_ip_on_launch         = false
    assign_ipv6_address_on_creation = false
    tags = {
      "kubernetes.io/role/internal-elb" = "1"
      Name                              = "basic-eks-private-eu-central-1a"
    }
  }
  sg_vpc_amit_private_eu_central_1b = {
    vpc_id                          = "vpc-0300246a0c7a5c8f9"
    cidr_block                      = "10.0.120.0/24"
    availability_zone               = "eu-central-1b"
    map_public_ip_on_launch         = false
    assign_ipv6_address_on_creation = false
    tags = {
      Name = "sg-vpc-amit-private-eu-central-1b"
    }
  }
  sg_vpc_amit_public_eu_central_1a = {
    vpc_id                          = "vpc-0300246a0c7a5c8f9"
    cidr_block                      = "10.0.1.0/24"
    availability_zone               = "eu-central-1a"
    map_public_ip_on_launch         = true
    assign_ipv6_address_on_creation = false
    tags = {
      Name = "sg-vpc-amit-public-eu-central-1a"
    }
  }
}

route_tables = {
  sg_vpc_amit_public = {
    vpc_id = "vpc-0300246a0c7a5c8f9"
    routes = [
      {
        cidr_block = "0.0.0.0/0"
        gateway_id = "igw-0dd20f4c806af3114"
      }
    ]
    tags = {
      Name = "sg-vpc-amit-public"
    }
  }
  sg_vpc_amit_private_eu_central_1a = {
    vpc_id = "vpc-0300246a0c7a5c8f9"
    routes = []
    tags = {
      Name = "sg-vpc-amit-private-eu-central-1a"
    }
  }
  vpc_rp_default = {
    vpc_id = "vpc-07982d303cf990a25"
    routes = []
    tags = {
      Name = "vpc-rp-default"
    }
  }
  basic_eks_private = {
    vpc_id = "vpc-046e4c08ba6dbab3d"
    routes = [
      {
        cidr_block     = "0.0.0.0/0"
        nat_gateway_id = "nat-085a03c3986e2d06d"
      }
    ]
    tags = {
      Name = "basic-eks-private"
    }
  }
  sg_vpc_amit_default = {
    vpc_id = "vpc-0300246a0c7a5c8f9"
    routes = []
    tags = {
      Name = "sg-vpc-amit-default"
    }
  }
  basic_eks_public = {
    vpc_id = "vpc-046e4c08ba6dbab3d"
    routes = [
      {
        cidr_block = "0.0.0.0/0"
        gateway_id = "igw-002f3e748d6007f83"
      }
    ]
    tags = {
      Name = "basic-eks-public"
    }
  }
  basic_eks_default = {
    vpc_id = "vpc-046e4c08ba6dbab3d"
    routes = []
    tags = {
      Name = "basic-eks-default"
    }
  }
  sg_vpc_amit_private_eu_central_1b = {
    vpc_id = "vpc-0300246a0c7a5c8f9"
    routes = []
    tags = {
      Name = "sg-vpc-amit-private-eu-central-1b"
    }
  }
}

security_groups = {
  basic_eks_cluster_20250805072828562900000004 = {
    name        = "basic-eks-cluster-20250805072828562900000004"
    description = "EKS cluster security group"
    vpc_id      = "vpc-046e4c08ba6dbab3d"
    ingress = [
      {
        from_port       = 443
        to_port         = 443
        protocol        = "tcp"
        security_groups = ["sg-0259cfa48eae0addd"]
        description     = "Node groups to cluster API"
      }
    ]
    egress = []
    tags = {
      Name = "basic-eks-cluster"
    }
  }
  outpost = {
    name        = "outpost"
    description = "Outpost instances - outbound only (Tailscale for inbound)"
    vpc_id      = "vpc-046e4c08ba6dbab3d"
    ingress     = []
    egress = [
      {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
      }
    ]
    tags = {}
  }
  basic_eks_node_20250805072828562600000003 = {
    name        = "basic-eks-node-20250805072828562600000003"
    description = "EKS node shared security group"
    vpc_id      = "vpc-046e4c08ba6dbab3d"
    ingress = [
      {
        from_port       = 6443
        to_port         = 6443
        protocol        = "tcp"
        security_groups = ["sg-011664c0def65d446"]
        description     = "Cluster API to node 6443/tcp webhook"
      },
      {
        from_port       = 9443
        to_port         = 9443
        protocol        = "tcp"
        security_groups = ["sg-011664c0def65d446"]
        description     = "Cluster API to node 9443/tcp webhook"
      },
      {
        from_port       = 1025
        to_port         = 65535
        protocol        = "tcp"
        security_groups = ["sg-0259cfa48eae0addd"]
        description     = "Node to node ingress on ephemeral ports"
      },
      {
        from_port       = 8443
        to_port         = 8443
        protocol        = "tcp"
        security_groups = ["sg-011664c0def65d446"]
        description     = "Cluster API to node 8443/tcp webhook"
      },
      {
        from_port       = 10250
        to_port         = 10250
        protocol        = "tcp"
        security_groups = ["sg-011664c0def65d446"]
        description     = "Cluster API to node kubelets"
      },
      {
        from_port       = 53
        to_port         = 53
        protocol        = "tcp"
        security_groups = ["sg-0259cfa48eae0addd"]
        description     = "Node to node CoreDNS"
      },
      {
        from_port       = 53
        to_port         = 53
        protocol        = "udp"
        security_groups = ["sg-0259cfa48eae0addd"]
        description     = "Node to node CoreDNS UDP"
      },
      {
        from_port       = 4443
        to_port         = 4443
        protocol        = "tcp"
        security_groups = ["sg-011664c0def65d446"]
        description     = "Cluster API to node 4443/tcp webhook"
      },
      {
        from_port       = 443
        to_port         = 443
        protocol        = "tcp"
        security_groups = ["sg-011664c0def65d446"]
        description     = "Cluster API to node groups"
      }
    ]
    egress = [
      {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        description = "Allow all egress"
      }
    ]
    tags = {
      "kubernetes.io/cluster/basic-eks" = "owned"
      Name                              = "basic-eks-node"
    }
  }
  vpc_rp_default_sg = {
    name        = "default"
    description = "default VPC security group"
    vpc_id      = "vpc-07982d303cf990a25"
    ingress     = []
    egress      = []
    tags = {
      Name = "vpc-rp-default"
    }
  }
  sg_vpc_amit_default_sg = {
    name        = "default"
    description = "default VPC security group"
    vpc_id      = "vpc-0300246a0c7a5c8f9"
    ingress     = []
    egress      = []
    tags = {
      Name = "sg-vpc-amit-default"
    }
  }
  basic_eks_default_sg = {
    name        = "default"
    description = "default VPC security group"
    vpc_id      = "vpc-046e4c08ba6dbab3d"
    ingress     = []
    egress      = []
    tags = {
      Name = "basic-eks-default"
    }
  }
  vpc_0300246a0c7a5c8f9_20250805092746563800000001 = {
    name        = "vpc-0300246a0c7a5c8f9-20250805092746563800000001"
    description = "Security Group managed by Terraform"
    vpc_id      = "vpc-0300246a0c7a5c8f9"
    ingress = [
      {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "http"
      },
      {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "ssh"
      }
    ]
    egress = [
      {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        description = "All outgoing traffic allowed"
      }
    ]
    tags = {
      Name = "vpc-0300246a0c7a5c8f9"
    }
  }
  k8s_elb_a3cceab2932f24753b07718f57ad473c = {
    name        = "k8s-elb-a3cceab2932f24753b07718f57ad473c"
    description = "Security group for Kubernetes ELB a3cceab2932f24753b07718f57ad473c (default/wfs-demo)"
    vpc_id      = "vpc-07982d303cf990a25"
    ingress = [
      {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      },
      {
        from_port   = 3
        to_port     = 4
        protocol    = "icmp"
        cidr_blocks = ["0.0.0.0/0"]
      }
    ]
    egress = [
      {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
      }
    ]
    tags = {
      "kubernetes.io/cluster/cluster-rp" = "owned"
    }
  }
  sg_runner_private_runner_new = {
    name        = "SG_RUNNER-private-runner-new"
    description = "Block inboud and Allow All outbound for Private Runner."
    vpc_id      = "vpc-024344e8549773d40"
    ingress     = []
    egress = [
      {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
      }
    ]
    tags = {}
  }
}

instance_ami                                  = "ami-03074cc1b166e8691"
instance_instance_type                        = "t2.medium"
instance_key_name                             = "taher-private-runner"
instance_subnet_id                            = "subnet-072669658da496c4a"
instance_vpc_security_group_ids               = ["sg-0d5bf7aeaa53bfb92"]
instance_availability_zone                    = "eu-central-1a"
instance_source_dest_check                    = true
instance_ebs_optimized                        = false
instance_tenancy                              = "default"
instance_metadata_http_endpoint               = "enabled"
instance_metadata_http_protocol_ipv6          = "disabled"
instance_metadata_http_put_response_hop_limit = 2
instance_metadata_http_tokens                 = "required"
instance_metadata_instance_metadata_tags      = "disabled"

athena_workgroup_name                               = "primary"
athena_workgroup_state                              = "ENABLED"
athena_workgroup_enforce_workgroup_configuration    = false
athena_workgroup_publish_cloudwatch_metrics_enabled = true
athena_workgroup_requester_pays_enabled             = false
athena_workgroup_selected_engine_version            = "AUTO"