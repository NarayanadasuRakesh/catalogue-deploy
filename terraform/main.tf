module "catalogue" {
  source = "../terraform-app"
  project_name = var.project_name
  environment = var.environment
  common_tags = var.common_tags
  tags = var.tags
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  component_sg_id = data.aws_ssm_parameter.catalogue_sg_id.value
  private_subnet_ids = split(",", data.aws_ssm_parameter.private_subnet_ids.value)
  iam_instance_profile = var.iam_instance_profile
  zone_name = var.zone_name
  app_alb_listener_arn = data.aws_ssm_parameter.app_alb_listener_arn.value
  rule_priority = 20
  app_version = var.app_version
}