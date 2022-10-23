resource "aws_iam_policy" "eks-cluster-role-trust-policy" {
  name    = "eks-cluster-role-trust-policy"
  policy  = file("./policies/eks-cluster-role-trust-policy.json")
}
