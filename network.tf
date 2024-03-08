resource "aws_vpc" "vnet" {
    cidr_block = var.network_details.cidr_block

    tags       = {
        Name   = var.network_details.name
    }
}

variable "security_group_id" {}

data "aws_security_group" "wallfire" {
    id          = var.security_group_id
}
