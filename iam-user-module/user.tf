# resource "aws_iam_user" "developer" {
#   name = "john"

#   }

resource "aws_iam_user" "developer" {
  for_each = toset(var.user_names)
  name = each.key


  }

# resource "aws_iam_user" "developer" {
#   name = var.username

#   }