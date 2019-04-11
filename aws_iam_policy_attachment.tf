resource "aws_iam_policy_attachment" "cloud9_user_change_password" {
  name = "change_password"
  users = ["${aws_iam_user.cloud9_user.*.name}"]
  policy_arn = "${var.change_password_policy_arn}"
}
