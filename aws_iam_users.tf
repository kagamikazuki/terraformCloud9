resource "aws_iam_user" "cloud9_user" {
  count = "${length(var.username)}"
  name = "${element(var.username, count.index)}"
}
