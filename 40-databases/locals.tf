locals {
    common_name = "${var.project}-${var.environment}"
    ami_id = data.aws_ami.joindevops.id
    mongodb_sg_id = data.aws_ssm_parameter.mongodb_sg_id.value
    database_subnet_id = split(",", data.aws_ssm_parameter.database_subnet_ids.value)[0] #database_subnet-1a
    common_tags = {
        Project = var.project
        environment = var.environment
        Terraform = true
    
    }
}