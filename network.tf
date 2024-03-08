resource "aws_vpc" "vnet" {
    cidr_block = var.network_details.cidr_block

    tags       = {
        Name   = var.network_details.name
    }
}

resource "aws_subnet" "subnet" {
    vpc_id     = data.aws_security_group.selected.vpc_id
    cidr_block = "10.0.1.0/24"
}


variable "security_group_id" {}

data "aws_security_group" "wallfire" {
    id          = var.security_group_id
}
