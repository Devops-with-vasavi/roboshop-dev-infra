module "vpc" {
    source = "git::https://github.com/Devops-with-vasavi/Terraform-aws-vpc.git?ref=main"
    project = var.project
    environment = var.environment
    is_vpc_peering_required = false
}