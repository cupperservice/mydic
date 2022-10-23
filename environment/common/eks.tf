resource "aws_iam_policy" "eks-cluster-role-trust-policy" {
  name    = "eks-cluster-role-trust-policy"
  policy  = <<-EOF
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Effect": "Allow",
          "Principal": {
            "Service": "eks.amazonaws.com"
          },
          "Action": "sts:AssumeRole"
        }
      ]
    }
  EOF
}
