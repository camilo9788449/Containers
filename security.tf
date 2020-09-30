/*----------------------------------------
Define the Security Group
----------------------------------------*/

resource "aws_security_group" "securityG" {
  name        = "securityG"
  vpc_id      = "${aws_vpc.vpc_demo.id}"
}

resource "aws_security_group_rule" "ingress-rule" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.securityG.id}"
}

resource "aws_security_group_rule" "egress-rule" {
  type              = "egress"
  description       = "All access"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.securityG.id}"
}

/*
resource "aws_key_pair" "key_ec2" {
  key_name   = "${var.key_name}"
  public_key = "${tls_private_key.key.public_key_openssh}"
}*/


