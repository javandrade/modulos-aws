resource "aws_eks_cluster" "example" {
  name     = "example"
  role_arn = "${aws_iam_role.example.arn}"

  vpc_config {
    endpoint_private_access = true 
    endpoint_public_access = false 
    subnet_ids = [
      "${aws_subnet.private_a_cidr_sec.id}",
      "${aws_subnet.private_c_cidr_sec.id}",
      "${aws_subnet.private_d_cidr_sec.id}",
      "${aws_subnet.public_a_cidr_sec.id}",
      "${aws_subnet.public_c_cidr_sec.id}",
      "${aws_subnet.public_d_cidr_sec.id}",
    ]
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Cluster handling.
  # Otherwise, EKS will not be able to properly delete EKS managed EC2 infrastructure such as Security Groups.
  depends_on = [
    "aws_iam_role_policy_attachment.example-AmazonEKSClusterPolicy",
    "aws_iam_role_policy_attachment.example-AmazonEKSServicePolicy",
  ]
  tags = "${local.common_tags}"  
}

