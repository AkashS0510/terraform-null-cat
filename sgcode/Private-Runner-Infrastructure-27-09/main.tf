module "iam_instance_profile" {
  source = "./modules/iam_instance_profile"

  name = var.iam_instance_profile_name
  role = var.iam_instance_profile_role
}

module "key_pair" {
  source   = "./modules/key_pair"
  for_each = var.key_pairs

  key_name   = each.value.key_name
  public_key = each.value.public_key
}
