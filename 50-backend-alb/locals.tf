locals {
    common_name = "${var.project}-${var.environment}"
    backend_alb_sg_id = data.aws_ssm_parameter.backend_alb_sg_id.value
    private_subnet_ids = split(",", data.aws_ssm_parameter.private_subnet_ids.value)[0] #private_subnet-1a
    common_tags = {
        Project = var.project
        environment = var.environment
        Terraform = true
    
    }
}