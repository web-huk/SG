variable "network_details" {
    type            = object({
        name        = string
        cidr_block  = string
    })
    default         = {
        name        = "fs-vpc"
        cidr_block  = "10.10.0.0/16"
    }
}

