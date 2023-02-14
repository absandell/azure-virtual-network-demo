# Local Variables Block
locals {
    owners = var.business_division
    environment = var.environment
    tags = {
        owners = local.owners,
        environment = local.environment
    }
}