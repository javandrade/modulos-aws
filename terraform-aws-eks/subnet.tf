resource "aws_vpc_ipv4_cidr_block_association" "cidr_secundario" {
  vpc_id     = "${data.aws_vpc.vpc.id}"
  cidr_block = "100.64.0.0/16"
}

resource "aws_subnet" "private_a_cidr_sec" {
  vpc_id     = "${aws_vpc_ipv4_cidr_block_association.cidr_secundario.vpc_id}"
  cidr_block = "100.64.0.0/18"
  availability_zone = "us-east-1a"
  tags       = {
    Name = "EKS-Private-AZ1A"
    Projeto = "gsp"
  }
}
resource "aws_subnet" "private_c_cidr_sec" {
  vpc_id     = "${aws_vpc_ipv4_cidr_block_association.cidr_secundario.vpc_id}"
  cidr_block = "100.64.64.0/18"
  availability_zone = "us-east-1c"
  tags       = {
    Name = "EKS-Private-AZ2C"
    Projeto = "gsp"
  }
}
resource "aws_subnet" "private_d_cidr_sec" {
  vpc_id     = "${aws_vpc_ipv4_cidr_block_association.cidr_secundario.vpc_id}"
  cidr_block = "100.64.128.0/18"
  availability_zone = "us-east-1d"
  tags       = {
    Name = "EKS-Private-AZ3D"
    Projeto = "gsp"
  }
}
resource "aws_subnet" "public_a_cidr_sec" {
  vpc_id     = "${aws_vpc_ipv4_cidr_block_association.cidr_secundario.vpc_id}"
  cidr_block = "100.64.192.0/21"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  tags       = {
    Name = "EKS-Public-AZ1A"
    Projeto = "gsp"
  }
}
resource "aws_subnet" "public_c_cidr_sec" {
  vpc_id     = "${aws_vpc_ipv4_cidr_block_association.cidr_secundario.vpc_id}"
  cidr_block = "100.64.200.0/21"
  availability_zone = "us-east-1c"
  map_public_ip_on_launch = true
  tags       = {
    Name = "EKS-Public-AZ2C"
    Projeto = "gsp"
  }
}
resource "aws_subnet" "public_d_cidr_sec" {
  vpc_id     = "${aws_vpc_ipv4_cidr_block_association.cidr_secundario.vpc_id}"
  cidr_block = "100.64.208.0/21"
  availability_zone = "us-east-1d"
   map_public_ip_on_launch = true
 tags       = {
    Name = "EKS-Public-AZ3D"
    Projeto = "gsp"
  }
}