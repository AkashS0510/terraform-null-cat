output "vpc_sg_vpc_amit_id" {
  description = "ID of the sg-vpc-amit VPC"
  value       = module.vpc["sg_vpc_amit"].id
}

output "vpc_basic_eks_id" {
  description = "ID of the basic-eks VPC"
  value       = module.vpc["basic_eks"].id
}

output "vpc_vpc_rp_id" {
  description = "ID of the vpc-rp VPC"
  value       = module.vpc["vpc_rp"].id
}

output "athena_workgroup_id" {
  description = "ID of the Athena workgroup"
  value       = module.athena_workgroup.id
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = module.instance.id
}