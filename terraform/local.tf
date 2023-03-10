# Local Variables Block
locals {
    owners               = var.business_division
    environment          = var.environment
    resource_name_prefix = "${var.business_division}-${var.environment}"
    tags = {
        owners      = local.owners,
        environment = local.environment
    }
}

