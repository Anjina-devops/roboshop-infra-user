module "allow_all_sg" {
  source           = "../terraform-aws-securitygroup"
  sg_name          = var.sg_name
  sg_description   = "allowing all the traffic from the internet"
  sg_ingress_rules = var.sg_ingress_rules
  vpc_id           = local.vpc_id
  common_tags      = var.common_tags
  project_name     = var.project_name
}
