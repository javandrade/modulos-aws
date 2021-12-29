data "aws_vpc" "vpc" {
  filter {
    name   = "tag:Name"
    values = ["vpc-dev-virginia-v2"]
  }
}
data "aws_route_table" "private" {
  route_table_id = "rtb-037624a59903b976d"
}
data "aws_route_table" "public" {
  route_table_id = "rtb-0f11b86ef55c8f58f"
}
