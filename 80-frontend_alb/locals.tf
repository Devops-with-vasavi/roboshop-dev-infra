locals {
    common_name = "${var.project}-${var.environment}"
    frontend_alb_sg_id = data.aws_ssm_parameter.frontend_alb_sg_id.value
    public_subnet_ids = split(",", data.aws_ssm_parameter.public_subnet_ids.value) #private_subnet-1a
    certificate_arn = data.aws_ssm_parameter.certificate_arn.value
    common_tags = {
        Project = var.project
        environment = var.environment
        Terraform = true
    
    }
}