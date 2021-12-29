resource "aws_route_table_association" "private_a_cidr_sec" {
  subnet_id      = "${aws_subnet.private_a_cidr_sec.id}"
  route_table_id = "${data.aws_route_table.private.id}"
}
resource "aws_route_table_association" "private_c_cidr_sec" {
  subnet_id      = "${aws_subnet.private_c_cidr_sec.id}"
  route_table_id = "${data.aws_route_table.private.id}"
}
resource "aws_route_table_association" "private_d_cidr_sec" {
  subnet_id      = "${aws_subnet.private_d_cidr_sec.id}"
  route_table_id = "${data.aws_route_table.private.id}"
}
resource "aws_route_table_association" "public_a_cidr_sec" {
  subnet_id      = "${aws_subnet.public_a_cidr_sec.id}"
  route_table_id = "${data.aws_route_table.public.id}"
}
resource "aws_route_table_association" "public_c_cidr_sec" {
  subnet_id      = "${aws_subnet.public_c_cidr_sec.id}"
  route_table_id = "${data.aws_route_table.public.id}"
}
resource "aws_route_table_association" "public_d_cidr_sec" {
  subnet_id      = "${aws_subnet.public_d_cidr_sec.id}"
  route_table_id = "${data.aws_route_table.public.id}"
}