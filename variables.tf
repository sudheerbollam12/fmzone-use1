variable "access_key" {
description = "AWS access key"
default = "AKIA2JCKGHWAEV6XFLOL"
}

variable "secret_key" {
description = "AWS secret key"
default = "dFaiKjm0RIx1+6Tfi6ERrZajQwps1vX2tba4kW3z"
}

variable "region" { default = "us-east-1" }

variable "key_path" {
description = "Key path for SSHing into EC2"
default  = "./ssh/fzdev.pem"
}

variable "key_name" {
description = "Key name for SSHing into EC2"
default = "fzdev"
}

variable "vpc_cidr" {
description = "CIDR for VPC"
default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
description = "CIDR for public subnet"
default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
description = "CIDR for private subnet"
default     = "10.0.2.0/24"
}

variable "amis" {
description = "Base AMI to launch the instances"
default = {
us-east-1      = "ami-047a51fa27710816e"
}
}
