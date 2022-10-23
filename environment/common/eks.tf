resource "aws_iam_role" "eks-cluster-role" {
  name                = "eks-cluster-role"
  assume_role_policy  = <<-EOF
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
  managed_policy_arns = ["arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"]
}

resource "aws_eks_cluster" "mydic-cluster" {
  name = "mydic-cluster"
  role_arn = aws_iam_role.eks-cluster-role.arn

  vpc_config {
    subnet_ids = [aws_subnet.your-sub-pri1.id, aws_subnet.your-sub-pri2.id]
  }
}
