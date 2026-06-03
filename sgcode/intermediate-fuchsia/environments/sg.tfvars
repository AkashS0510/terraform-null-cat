region = "eu-central-1"

instances = {
  private_runner_do_not_delete = {
    ami_id                               = "ami-04f9a173520f395dd"
    instance_type                        = "t2.large"
    availability_zone                    = "eu-central-1a"
    subnet_id                            = "subnet-064f42dced8666a63"
    vpc_security_group_ids               = ["sg-0adb3e09fe11a19a1"]
    key_name                             = "private-runner-workshop"
    iam_instance_profile_name            = null
    source_dest_check                    = true
    monitoring                           = false
    ebs_optimized                        = false
    tenancy                              = "default"
    metadata_http_endpoint               = "enabled"
    metadata_http_tokens                 = "required"
    metadata_http_put_response_hop_limit = 2
    metadata_http_protocol_ipv6          = "disabled"
    metadata_instance_metadata_tags      = "disabled"
    tags = {
      Name = "private-runner-do-not-delete"
    }
  }
  managed_node = {
    ami_id                               = "ami-027ceff350abb2819"
    instance_type                        = "t3.medium"
    availability_zone                    = "eu-central-1b"
    subnet_id                            = "subnet-083c90a8048614a76"
    vpc_security_group_ids               = ["sg-02208ae357c6f1a58"]
    key_name                             = null
    iam_instance_profile_name            = null
    source_dest_check                    = true
    monitoring                           = true
    ebs_optimized                        = false
    tenancy                              = "default"
    metadata_http_endpoint               = "enabled"
    metadata_http_tokens                 = "required"
    metadata_http_put_response_hop_limit = 2
    metadata_http_protocol_ipv6          = "disabled"
    metadata_instance_metadata_tags      = "disabled"
    tags = {
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
      Name                             = "managed-node"
    }
  }
  aplattel_sg_private_runner = {
    ami_id                               = "ami-0157af9aea2eef346"
    instance_type                        = "t2.medium"
    availability_zone                    = "us-east-1c"
    subnet_id                            = "subnet-0029ac825e009c664"
    vpc_security_group_ids               = ["sg-00bd4bcd7401c8585"]
    key_name                             = "aplattel-private-runner"
    iam_instance_profile_name            = null
    source_dest_check                    = true
    monitoring                           = false
    ebs_optimized                        = false
    tenancy                              = "default"
    metadata_http_endpoint               = "enabled"
    metadata_http_tokens                 = "required"
    metadata_http_put_response_hop_limit = 2
    metadata_http_protocol_ipv6          = "disabled"
    metadata_instance_metadata_tags      = "disabled"
    tags = {
      Name = "aplattel-sg-private-runner"
    }
  }
  i_000e597ea8aa8260b = {
    ami_id                               = "ami-03074cc1b166e8691"
    instance_type                        = "t2.medium"
    availability_zone                    = "eu-central-1a"
    subnet_id                            = "subnet-072669658da496c4a"
    vpc_security_group_ids               = ["sg-0d5bf7aeaa53bfb92"]
    key_name                             = "taher-private-runner"
    iam_instance_profile_name            = null
    source_dest_check                    = true
    monitoring                           = false
    ebs_optimized                        = false
    tenancy                              = "default"
    metadata_http_endpoint               = "enabled"
    metadata_http_tokens                 = "required"
    metadata_http_put_response_hop_limit = 2
    metadata_http_protocol_ipv6          = "disabled"
    metadata_instance_metadata_tags      = "disabled"
    tags                                 = {}
  }
  i_007e6212f82fd1d38 = {
    ami_id                               = "ami-0242293c1166ee926"
    instance_type                        = "t3.medium"
    availability_zone                    = "eu-central-1a"
    subnet_id                            = "subnet-0b77c0d76befaf70d"
    vpc_security_group_ids               = ["sg-04211bd5ce13e32c0"]
    key_name                             = "packer_68c879f2-1468-642a-6776-a06c2a3c37fc"
    iam_instance_profile_name            = null
    source_dest_check                    = true
    monitoring                           = false
    ebs_optimized                        = false
    tenancy                              = "default"
    metadata_http_endpoint               = "enabled"
    metadata_http_tokens                 = "optional"
    metadata_http_put_response_hop_limit = 1
    metadata_http_protocol_ipv6          = "disabled"
    metadata_instance_metadata_tags      = "disabled"
    tags                                 = {}
  }
  i_00af4198af591318c = {
    ami_id                               = "ami-01b5c3cf789dbf1fb"
    instance_type                        = "t3.micro"
    availability_zone                    = "eu-central-1a"
    subnet_id                            = "subnet-0b77c0d76befaf70d"
    vpc_security_group_ids               = ["sg-0373ac5706eeaf25d"]
    key_name                             = "ec2-key-k3ehbblq"
    iam_instance_profile_name            = null
    source_dest_check                    = true
    monitoring                           = false
    ebs_optimized                        = false
    tenancy                              = "default"
    metadata_http_endpoint               = "enabled"
    metadata_http_tokens                 = "optional"
    metadata_http_put_response_hop_limit = 1
    metadata_http_protocol_ipv6          = "disabled"
    metadata_instance_metadata_tags      = "disabled"
    tags                                 = {}
  }
  ecs_instances_admin_workflow_qa = {
    ami_id                               = "ami-0f37a3fdaaaf3661e"
    instance_type                        = "t2.medium"
    availability_zone                    = "eu-central-1a"
    subnet_id                            = "subnet-072669658da496c4a"
    vpc_security_group_ids               = ["sg-064cbb231ba1bca24"]
    key_name                             = "nonprod-euc1"
    iam_instance_profile_name            = null
    source_dest_check                    = true
    monitoring                           = false
    ebs_optimized                        = false
    tenancy                              = "default"
    metadata_http_endpoint               = "enabled"
    metadata_http_tokens                 = "optional"
    metadata_http_put_response_hop_limit = 1
    metadata_http_protocol_ipv6          = "disabled"
    metadata_instance_metadata_tags      = "disabled"
    tags = {
      "aws:autoscaling:groupName"     = "ecs-instances-admin-workflow-qa"
      "Resource-Type"                 = "nonprod"
      "aws:ec2launchtemplate:version" = "10"
      "aws:ec2launchtemplate:id"      = "lt-0f212ff506c4e1680"
      Name                            = "ecs-instances-admin-workflow-qa"
    }
  }
  taher_private_runner_amz = {
    ami_id                               = "ami-0b74f796d330ab49c"
    instance_type                        = "t2.medium"
    availability_zone                    = "eu-central-1a"
    subnet_id                            = "subnet-072669658da496c4a"
    vpc_security_group_ids               = ["sg-092a5ff991a0802bc"]
    key_name                             = "taher-private-runner"
    iam_instance_profile_name            = null
    source_dest_check                    = true
    monitoring                           = false
    ebs_optimized                        = false
    tenancy                              = "default"
    metadata_http_endpoint               = "enabled"
    metadata_http_tokens                 = "required"
    metadata_http_put_response_hop_limit = 2
    metadata_http_protocol_ipv6          = "disabled"
    metadata_instance_metadata_tags      = "disabled"
    tags = {
      Name = "taher-private-runner-amz"
    }
  }
  i_015dcccda629ac122 = {
    ami_id                               = "ami-074dd8e8dac7651a5"
    instance_type                        = "t3.micro"
    availability_zone                    = "eu-central-1a"
    subnet_id                            = "subnet-0b77c0d76befaf70d"
    vpc_security_group_ids               = ["sg-057053456dac1810d"]
    key_name                             = "ec2-key-thz89qha"
    iam_instance_profile_name            = null
    source_dest_check                    = true
    monitoring                           = false
    ebs_optimized                        = false
    tenancy                              = "default"
    metadata_http_endpoint               = "enabled"
    metadata_http_tokens                 = "optional"
    metadata_http_put_response_hop_limit = 1
    metadata_http_protocol_ipv6          = "disabled"
    metadata_instance_metadata_tags      = "disabled"
    tags                                 = {}
  }
  i_01a58b9fe5e4d0c3c = {
    ami_id                               = "ami-027066fb16fc18634"
    instance_type                        = "t3.micro"
    availability_zone                    = "eu-central-1a"
    subnet_id                            = "subnet-0b77c0d76befaf70d"
    vpc_security_group_ids               = ["sg-0d603d8148b0d5ac9"]
    key_name                             = "ec2-key-16n94g2h"
    iam_instance_profile_name            = null
    source_dest_check                    = true
    monitoring                           = false
    ebs_optimized                        = false
    tenancy                              = "default"
    metadata_http_endpoint               = "enabled"
    metadata_http_tokens                 = "optional"
    metadata_http_put_response_hop_limit = 1
    metadata_http_protocol_ipv6          = "disabled"
    metadata_instance_metadata_tags      = "disabled"
    tags                                 = {}
  }
  privat_runner = {
    ami_id                               = "ami-081d42a282b78e6d3"
    instance_type                        = "t2.large"
    availability_zone                    = "eu-central-1a"
    subnet_id                            = "subnet-072669658da496c4a"
    vpc_security_group_ids               = ["sg-064cbb231ba1bca24"]
    key_name                             = "nonprod-euc1"
    iam_instance_profile_name            = null
    source_dest_check                    = true
    monitoring                           = false
    ebs_optimized                        = false
    tenancy                              = "default"
    metadata_http_endpoint               = "enabled"
    metadata_http_tokens                 = "optional"
    metadata_http_put_response_hop_limit = 1
    metadata_http_protocol_ipv6          = "disabled"
    metadata_instance_metadata_tags      = "disabled"
    tags = {
      Name = "privat-runner"
    }
  }
  neha_private_runner_private_runner_asg = {
    ami_id                               = "ami-0f54161e67ab29dae"
    instance_type                        = "t3.medium"
    availability_zone                    = "eu-central-1a"
    subnet_id                            = "subnet-0b77c0d76befaf70d"
    vpc_security_group_ids               = ["sg-03743e5fa85c19e63"]
    key_name                             = "adis-key-pair"
    iam_instance_profile_name            = null
    source_dest_check                    = true
    monitoring                           = false
    ebs_optimized                        = false
    tenancy                              = "default"
    metadata_http_endpoint               = "enabled"
    metadata_http_tokens                 = "required"
    metadata_http_put_response_hop_limit = 2
    metadata_http_protocol_ipv6          = "disabled"
    metadata_instance_metadata_tags      = "disabled"
    tags = {
      "aws:autoscaling:groupName"     = "Neha_Private_Runner-private-runner-asg"
      "aws:ec2launchtemplate:version" = "3"
      "aws:ec2launchtemplate:id"      = "lt-04a98ee86f4d3061b"
      Name                            = "Neha_Private_Runner-private-runner-asg"
    }
  }
  demo_org_prepare_release_branch_testing = {
    ami_id                               = "ami-0281e3f1612a178c5"
    instance_type                        = "t2.medium"
    availability_zone                    = "eu-central-1b"
    subnet_id                            = "subnet-06293819030751560"
    vpc_security_group_ids               = ["sg-064cbb231ba1bca24"]
    key_name                             = "nonprod-euc1"
    iam_instance_profile_name            = null
    source_dest_check                    = true
    monitoring                           = false
    ebs_optimized                        = false
    tenancy                              = "default"
    metadata_http_endpoint               = "enabled"
    metadata_http_tokens                 = "required"
    metadata_http_put_response_hop_limit = 2
    metadata_http_protocol_ipv6          = "disabled"
    metadata_instance_metadata_tags      = "disabled"
    tags = {
      Name = "demo-org-prepare-release-branch-testing"
    }
  }
  test_instance = {
    ami_id                               = "ami-09042b2f6d07d164a"
    instance_type                        = "t3.micro"
    availability_zone                    = "eu-central-1a"
    subnet_id                            = "subnet-0adeb216161049cca"
    vpc_security_group_ids               = ["sg-064cbb231ba1bca24"]
    key_name                             = null
    iam_instance_profile_name            = null
    source_dest_check                    = true
    monitoring                           = false
    ebs_optimized                        = false
    tenancy                              = "default"
    metadata_http_endpoint               = "enabled"
    metadata_http_tokens                 = "optional"
    metadata_http_put_response_hop_limit = 1
    metadata_http_protocol_ipv6          = "disabled"
    metadata_instance_metadata_tags      = "disabled"
    tags = {
      Name = "test-instance"
    }
  }
  i_02a92f89d43898403 = {
    ami_id                               = "ami-03b7a7ce915b46b75"
    instance_type                        = "t3.medium"
    availability_zone                    = "eu-central-1a"
    subnet_id                            = "subnet-0b77c0d76befaf70d"
    vpc_security_group_ids               = ["sg-04fe9eb743c23145a"]
    key_name                             = "ec2-key-09a43dgt"
    iam_instance_profile_name            = null
    source_dest_check                    = true
    monitoring                           = false
    ebs_optimized                        = false
    tenancy                              = "default"
    metadata_http_endpoint               = "enabled"
    metadata_http_tokens                 = "optional"
    metadata_http_put_response_hop_limit = 1
    metadata_http_protocol_ipv6          = "disabled"
    metadata_instance_metadata_tags      = "disabled"
    tags                                 = {}
  }
  liveeo_private_replica_debug = {
    ami_id                               = "ami-081d42a282b78e6d3"
    instance_type                        = "t2.micro"
    availability_zone                    = "eu-central-1a"
    subnet_id                            = "subnet-072669658da496c4a"
    vpc_security_group_ids               = ["sg-064cbb231ba1bca24"]
    key_name                             = "nonprod-euc1"
    iam_instance_profile_name            = null
    source_dest_check                    = true
    monitoring                           = false
    ebs_optimized                        = false
    tenancy                              = "default"
    metadata_http_endpoint               = "enabled"
    metadata_http_tokens                 = "optional"
    metadata_http_put_response_hop_limit = 1
    metadata_http_protocol_ipv6          = "disabled"
    metadata_instance_metadata_tags      = "disabled"
    tags = {
      Name = "liveeo-private-replica-debug"
    }
  }
  i_0312a14319779a1f4 = {
    ami_id                               = "ami-03b7a7ce915b46b75"
    instance_type                        = "t3.medium"
    availability_zone                    = "eu-central-1a"
    subnet_id                            = "subnet-0b77c0d76befaf70d"
    vpc_security_group_ids               = ["sg-09f8fab6daee34c58"]
    key_name                             = "ec2-key-wz5kynnr"
    iam_instance_profile_name            = null
    source_dest_check                    = true
    monitoring                           = false
    ebs_optimized                        = false
    tenancy                              = "default"
    metadata_http_endpoint               = "enabled"
    metadata_http_tokens                 = "optional"
    metadata_http_put_response_hop_limit = 1
    metadata_http_protocol_ipv6          = "disabled"
    metadata_instance_metadata_tags      = "disabled"
    tags                                 = {}
  }
}

iam_instance_profiles = {
  ec2_private_runner_role = {
    name      = "ec2_private_runner_role"
    path      = "/"
    role_name = "ec2_private_runner_role"
  }
  eks_fece5f1f_94cc_37f3_cca2_2de45fbc88e4 = {
    name      = "eks-fece5f1f-94cc-37f3-cca2-2de45fbc88e4"
    path      = "/"
    role_name = "managed-node-eks-node-group-20260305134529526900000001"
  }
  sg_private_runner_connector = {
    name      = "sg-private-runner-connector"
    path      = "/"
    role_name = "sg-private-runner-connector"
  }
  amazon_ec2_container_service_for_ec2_role = {
    name      = "AmazonEC2ContainerServiceforEC2Role"
    path      = "/"
    role_name = "AmazonEC2ContainerServiceforEC2Role"
  }
  neha_private_runner_runner_instance_profile = {
    name      = "Neha_Private_Runner-runner-instance-profile"
    path      = "/"
    role_name = "Neha_Private_Runner-ec2-private-runner-role"
  }
}

key_pairs = {
  private_runner_workshop = {
    key_name   = "private-runner-workshop"
    public_key = "PLACEHOLDER_PROVIDE_PUBLIC_KEY"
  }
  aplattel_private_runner = {
    key_name   = "aplattel-private-runner"
    public_key = "PLACEHOLDER_PROVIDE_PUBLIC_KEY"
  }
  taher_private_runner = {
    key_name   = "taher-private-runner"
    public_key = "PLACEHOLDER_PROVIDE_PUBLIC_KEY"
  }
  ec2_key_k3ehbblq = {
    key_name   = "ec2-key-k3ehbblq"
    public_key = "PLACEHOLDER_PROVIDE_PUBLIC_KEY"
  }
  nonprod_euc1 = {
    key_name   = "nonprod-euc1"
    public_key = "PLACEHOLDER_PROVIDE_PUBLIC_KEY"
  }
  adis_key_pair = {
    key_name   = "adis-key-pair"
    public_key = "PLACEHOLDER_PROVIDE_PUBLIC_KEY"
  }
  ec2_key_16n94g2h = {
    key_name   = "ec2-key-16n94g2h"
    public_key = "PLACEHOLDER_PROVIDE_PUBLIC_KEY"
  }
}

network_interfaces = {
  eni_0ae0ac032fb68be5b = {
    subnet_id         = "subnet-064f42dced8666a63"
    private_ips       = ["10.0.13.161"]
    security_groups   = ["sg-0adb3e09fe11a19a1"]
    source_dest_check = true
    description       = null
    tags              = {}
  }
  eni_0766757b2170188e5 = {
    subnet_id         = "subnet-083c90a8048614a76"
    private_ips       = ["10.0.2.210", "10.0.2.68", "10.0.2.53", "10.0.2.44", "10.0.2.29", "10.0.2.143"]
    security_groups   = ["sg-02208ae357c6f1a58"]
    source_dest_check = true
    description       = "aws-K8S-i-0b86bd1d36a4864dd"
    tags = {
      "eks:eni:owner"                          = "amazon-vpc-cni"
      "node.k8s.amazonaws.com/instance_id"     = "i-0b86bd1d36a4864dd"
      "node.k8s.amazonaws.com/createdAt"       = "2026-03-05T13:47:02Z"
      "cluster.k8s.amazonaws.com/name"         = "eks-ms"
    }
  }
  managed_node = {
    subnet_id         = "subnet-083c90a8048614a76"
    private_ips       = ["10.0.2.5", "10.0.2.192", "10.0.2.41", "10.0.2.154", "10.0.2.218", "10.0.2.123"]
    security_groups   = ["sg-02208ae357c6f1a58"]
    source_dest_check = true
    description       = null
    tags = {
      "eks:eni:owner"                          = "amazon-vpc-cni"
      "node.k8s.amazonaws.com/instance_id"     = "i-0b86bd1d36a4864dd"
      "cluster.k8s.amazonaws.com/name"         = "eks-ms"
      "eks:cluster-name"                       = "eks-ms"
      "eks:nodegroup-name"                     = "managed-node-20260305134536297600000007"
      Name                                     = "managed-node"
    }
  }
  eni_0ec9413e836fa1cad = {
    subnet_id         = "subnet-0029ac825e009c664"
    private_ips       = ["172.31.20.246"]
    security_groups   = ["sg-00bd4bcd7401c8585"]
    source_dest_check = true
    description       = null
    tags              = {}
  }
  eni_055ce4572025a47de = {
    subnet_id         = "subnet-072669658da496c4a"
    private_ips       = ["10.0.0.37"]
    security_groups   = ["sg-0d5bf7aeaa53bfb92"]
    source_dest_check = true
    description       = null
    tags              = {}
  }
  eni_0bbe8177077664b76 = {
    subnet_id         = "subnet-0b77c0d76befaf70d"
    private_ips       = ["10.0.0.172"]
    security_groups   = ["sg-04211bd5ce13e32c0"]
    source_dest_check = true
    description       = null
    tags              = {}
  }
  eni_04c73891734b9a355 = {
    subnet_id         = "subnet-0b77c0d76befaf70d"
    private_ips       = ["10.0.0.163"]
    security_groups   = ["sg-0373ac5706eeaf25d"]
    source_dest_check = true
    description       = null
    tags              = {}
  }
  eni_03f18c266f4ca136e = {
    subnet_id         = "subnet-072669658da496c4a"
    private_ips       = ["10.0.0.57"]
    security_groups   = ["sg-064cbb231ba1bca24"]
    source_dest_check = true
    description       = null
    tags = {
      "Resource-Type" = "nonprod"
    }
  }
  eni_0cde3d4209449554a = {
    subnet_id         = "subnet-072669658da496c4a"
    private_ips       = ["10.0.0.41"]
    security_groups   = ["sg-092a5ff991a0802bc"]
    source_dest_check = true
    description       = null
    tags              = {}
  }
  eni_0611b2f378e918fd0 = {
    subnet_id         = "subnet-0b77c0d76befaf70d"
    private_ips       = ["10.0.0.209"]
    security_groups   = ["sg-057053456dac1810d"]
    source_dest_check = true
    description       = null
    tags              = {}
  }
  eni_0419e64531f4b1e19 = {
    subnet_id         = "subnet-0b77c0d76befaf70d"
    private_ips       = ["10.0.0.111"]
    security_groups   = ["sg-0d603d8148b0d5ac9"]
    source_dest_check = true
    description       = null
    tags              = {}
  }
  eni_02228f5c1d152585c = {
    subnet_id         = "subnet-072669658da496c4a"
    private_ips       = ["10.0.0.38"]
    security_groups   = ["sg-064cbb231ba1bca24"]
    source_dest_check = true
    description       = null
    tags              = {}
  }
  eni_06111e22ea34335a6 = {
    subnet_id         = "subnet-0b77c0d76befaf70d"
    private_ips       = ["10.0.0.216"]
    security_groups   = ["sg-03743e5fa85c19e63"]
    source_dest_check = true
    description       = null
    tags              = {}
  }
  eni_0a59b1157f1536d50 = {
    subnet_id         = "subnet-06293819030751560"
    private_ips       = ["10.0.0.218"]
    security_groups   = ["sg-064cbb231ba1bca24"]
    source_dest_check = true
    description       = null
    tags              = {}
  }
  eni_012b6b714b4087819 = {
    subnet_id         = "subnet-0adeb216161049cca"
    private_ips       = ["10.0.0.110"]
    security_groups   = ["sg-064cbb231ba1bca24"]
    source_dest_check = true
    description       = null
    tags              = {}
  }
  eni_0d738514adbd9a62b = {
    subnet_id         = "subnet-0b77c0d76befaf70d"
    private_ips       = ["10.0.0.65"]
    security_groups   = ["sg-04fe9eb743c23145a"]
    source_dest_check = true
    description       = null
    tags              = {}
  }
  eni_0acba230c9dc664c3 = {
    subnet_id         = "subnet-072669658da496c4a"
    private_ips       = ["10.0.0.49"]
    security_groups   = ["sg-064cbb231ba1bca24"]
    source_dest_check = true
    description       = null
    tags              = {}
  }
  eni_044bd40334f459f88 = {
    subnet_id         = "subnet-0b77c0d76befaf70d"
    private_ips       = ["10.0.0.128"]
    security_groups   = ["sg-09f8fab6daee34c58"]
    source_dest_check = true
    description       = null
    tags              = {}
  }
}