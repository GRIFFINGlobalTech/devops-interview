#todo create a ECR repository


data "aws_iam_policy_document" "ecr_push_image" {
  statement {
    effect  = "Allow"
    actions = [
        "ecr:CompleteLayerUpload",
        "ecr:UploadLayerPart",
        "ecr:InitiateLayerUpload",
        "ecr:BatchCheckLayerAvailability",
        "ecr:PutImage"
    ]
    resources = [
       "arn:aws:ecr:us-east-1:835274413962:repository/python-app-*"
    ]
  }
    statement {
    effect  = "Allow"
    actions = [
        "ecr:GetAuthorizationToken"
    ]
    resources = [
       "*"
    ]
  }
}

resource "aws_iam_policy" "ecr_push_image" {
  name   = "python-app-image"
  description = "User can push images to python-app ECR repository"
  policy = data.aws_iam_policy_document.ecr_push_image.json
}

resource "aws_iam_user_policy_attachment" "user_ecr_push_image" {
  user       = "gha-user"
  policy_arn = aws_iam_policy.ecr_push_image.arn
}