resource "aws_vpc" "vnet" {
    cidr_block = var.network_details.cidr_block

    tags       = {
        Name   = var.network_details.name
    }
}
