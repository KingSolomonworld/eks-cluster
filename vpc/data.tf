data "aws_iam_policy_document" "nodes" {
  statement {
    sid    = "AllowEKSAssumeRole"
    effect = "Allow"
    actions = [
      "sts:AssumeRole"
    ]
    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

data "aws_iam_policy_document" "eks_assume_role" {
  statement {
    sid    = "AllowEKSAssumeRole"
    effect = "Allow"
    actions = [
      "sts:AssumeRole"
    ]
    principals {
      type        = "Service"
      identifiers = ["eks.amazonaws.com"]
    }
  }
}