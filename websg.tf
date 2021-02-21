resource "aws_security_group" "web" {
name = "vpc_web"
description = "Accept incoming connections."

ingress {
from_port = 0
to_port = 65535
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"] }
ingress {
from_port = 443
to_port = 443
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"] }
ingress {
from_port = -1
to_port = -1
protocol = "icmp"
cidr_blocks = ["0.0.0.0/0"] }

egress {
from_port = 0
to_port = 0
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"] }

vpc_id = "vpc-8c6fc1f1"

tags {
Name = "WebServerSG"
}
}
