#!/bin/sh
set -e

"$1" import -var-file environments/sg.tfvars 'module.vpc["sg_vpc_amit"].aws_vpc.this' 'vpc-0300246a0c7a5c8f9'
"$1" import -var-file environments/sg.tfvars 'module.vpc["basic_eks"].aws_vpc.this' 'vpc-046e4c08ba6dbab3d'
"$1" import -var-file environments/sg.tfvars 'module.vpc["vpc_rp"].aws_vpc.this' 'vpc-07982d303cf990a25'

"$1" import -var-file environments/sg.tfvars 'module.internet_gateway["basic_eks"].aws_internet_gateway.this' 'igw-002f3e748d6007f83'
"$1" import -var-file environments/sg.tfvars 'module.internet_gateway["vpc_rp"].aws_internet_gateway.this' 'igw-00e31885391627f42'
"$1" import -var-file environments/sg.tfvars 'module.internet_gateway["sg_vpc_amit"].aws_internet_gateway.this' 'igw-0dd20f4c806af3114'

"$1" import -var-file environments/sg.tfvars 'module.subnet["sg_vpc_amit_private_eu_central_1a"].aws_subnet.this' 'subnet-019bb58a1054f5b13'
"$1" import -var-file environments/sg.tfvars 'module.subnet["vpc_rp_public_eu_central_1a"].aws_subnet.this' 'subnet-020e12cfe35cc02f1'
"$1" import -var-file environments/sg.tfvars 'module.subnet["basic_eks_public_eu_central_1b"].aws_subnet.this' 'subnet-02d820ed1bcba116b'
"$1" import -var-file environments/sg.tfvars 'module.subnet["basic_eks_private_eu_central_1b"].aws_subnet.this' 'subnet-03f1fe4b879a8cb8b'
"$1" import -var-file environments/sg.tfvars 'module.subnet["sg_vpc_amit_public_eu_central_1b"].aws_subnet.this' 'subnet-044030478d6ac74bd'
"$1" import -var-file environments/sg.tfvars 'module.subnet["basic_eks_public_eu_central_1a"].aws_subnet.this' 'subnet-046ecb922ddd59f33'
"$1" import -var-file environments/sg.tfvars 'module.subnet["vpc_rp_public_eu_central_1b"].aws_subnet.this' 'subnet-0533be8fc6028b6c0'
"$1" import -var-file environments/sg.tfvars 'module.subnet["basic_eks_private_eu_central_1c"].aws_subnet.this' 'subnet-06f7eb69ac67a1020'
"$1" import -var-file environments/sg.tfvars 'module.subnet["basic_eks_public_eu_central_1c"].aws_subnet.this' 'subnet-0ae635ee4e44a0eea'
"$1" import -var-file environments/sg.tfvars 'module.subnet["basic_eks_private_eu_central_1a"].aws_subnet.this' 'subnet-0baa6badc21862143'
"$1" import -var-file environments/sg.tfvars 'module.subnet["sg_vpc_amit_private_eu_central_1b"].aws_subnet.this' 'subnet-0cd4f27ad4f1d5f35'
"$1" import -var-file environments/sg.tfvars 'module.subnet["sg_vpc_amit_public_eu_central_1a"].aws_subnet.this' 'subnet-0cfc1b10e7ebbc037'

"$1" import -var-file environments/sg.tfvars 'module.route_table["sg_vpc_amit_public"].aws_route_table.this' 'rtb-00d04ba014f094905'
"$1" import -var-file environments/sg.tfvars 'module.route_table["sg_vpc_amit_private_eu_central_1a"].aws_route_table.this' 'rtb-032699dce6e6baedf'
"$1" import -var-file environments/sg.tfvars 'module.route_table["vpc_rp_default"].aws_route_table.this' 'rtb-0477dd62fa8a9eaef'
"$1" import -var-file environments/sg.tfvars 'module.route_table["basic_eks_private"].aws_route_table.this' 'rtb-04a97604db2945bae'
"$1" import -var-file environments/sg.tfvars 'module.route_table["sg_vpc_amit_default"].aws_route_table.this' 'rtb-0afff8bae88dc18ec'
"$1" import -var-file environments/sg.tfvars 'module.route_table["basic_eks_public"].aws_route_table.this' 'rtb-0c773fca9a51a4688'
"$1" import -var-file environments/sg.tfvars 'module.route_table["basic_eks_default"].aws_route_table.this' 'rtb-0dbf3bf60fb8df6ac'
"$1" import -var-file environments/sg.tfvars 'module.route_table["sg_vpc_amit_private_eu_central_1b"].aws_route_table.this' 'rtb-0dc1571ece1f4dfe6'

"$1" import -var-file environments/sg.tfvars 'module.security_group["basic_eks_cluster_20250805072828562900000004"].aws_security_group.this' 'sg-011664c0def65d446'
"$1" import -var-file environments/sg.tfvars 'module.security_group["outpost"].aws_security_group.this' 'sg-024db0d463e8ff59d'
"$1" import -var-file environments/sg.tfvars 'module.security_group["basic_eks_node_20250805072828562600000003"].aws_security_group.this' 'sg-0259cfa48eae0addd'
"$1" import -var-file environments/sg.tfvars 'module.security_group["vpc_rp_default_sg"].aws_security_group.this' 'sg-03f8915c3fb30a167'
"$1" import -var-file environments/sg.tfvars 'module.security_group["sg_vpc_amit_default_sg"].aws_security_group.this' 'sg-04614b0314c548c41'
"$1" import -var-file environments/sg.tfvars 'module.security_group["basic_eks_default_sg"].aws_security_group.this' 'sg-06aa81eda599d8a8c'
"$1" import -var-file environments/sg.tfvars 'module.security_group["vpc_0300246a0c7a5c8f9_20250805092746563800000001"].aws_security_group.this' 'sg-0a2985baeb0ee82a9'
"$1" import -var-file environments/sg.tfvars 'module.security_group["k8s_elb_a3cceab2932f24753b07718f57ad473c"].aws_security_group.this' 'sg-0b99a9adfa3de06c8'
"$1" import -var-file environments/sg.tfvars 'module.security_group["sg_runner_private_runner_new"].aws_security_group.this' 'sg-012692b5f24da3d46'

"$1" import -var-file environments/sg.tfvars 'module.instance.aws_instance.this' 'i-000e597ea8aa8260b'

"$1" import -var-file environments/sg.tfvars 'module.athena_workgroup.aws_athena_workgroup.this' 'primary'