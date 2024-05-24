module "db" {
  source = "../terraform-aws-ec2"
  project_name = var.project_name
  environment = var.environment
  sg_description = "sg for db MySQL instances"
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  common_tags = var.common_tags
  sg_name = "db"
}

module "backend" {
  source = "../teraform-aws-securitygroup"
  project_name = var.project_name
  environment = var.environment
  sg_description = "sg for backend instances"
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  common_tags = var.common_tags
  sg_name = "backend"
}

module "frontend" {
  source = "../teraform-aws-securitygroup"
  project_name = var.project_name
  environment = var.environment
  sg_description = "sg for frontend instances"
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  common_tags = var.common_tags
  sg_name = "frontend"
}


