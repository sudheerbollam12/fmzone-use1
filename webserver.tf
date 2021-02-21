resource "aws_instance" "web-1" {
ami = "ami-047a51fa27710816e"
availability_zone = "us-east-1a"
instance_type = "t2.micro"
key_name = "${var.key_name}"
vpc_security_group_ids = ["${aws_security_group.web.id}"]
subnet_id = "subnet-792cb326"
associate_public_ip_address = true
source_dest_check = false

tags {
Name = "FamilyZone Web Server"
}
}


