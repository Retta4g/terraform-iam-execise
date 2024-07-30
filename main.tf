# Configure the AWS provider
provider "aws" {
  region = "us-west-2"
}

# Create IAM users
resource "aws_iam_user" "user1" {
  name = var.user_name_1
}

resource "aws_iam_user" "user2" {
  name = var.user_name_2
}

# Create IAM group
resource "aws_iam_group" "group" {
  name = var.group_name
}

# Attach users to the group
resource "aws_iam_user_group_membership" "user1_membership" {
  user  = aws_iam_user.user1.name
  groups = [aws_iam_group.group.name]
}

resource "aws_iam_user_group_membership" "user2_membership" {
  user  = aws_iam_user.user2.name
  groups = [aws_iam_group.group.name]
}

# Attach policy to the group
resource "aws_iam_group_policy_attachment" "group_policy" {
  group      = aws_iam_group.group.name
  policy_arn = "arn:aws:iam::aws:policy/PowerUserAccess"
}


