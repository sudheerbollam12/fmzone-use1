provider "aws" {
  region = "us-east-1"
}
resource "aws_vpc" "default" {
cidr_block = "${var.vpc_cidr}"
enable_dns_hostnames = true
}
