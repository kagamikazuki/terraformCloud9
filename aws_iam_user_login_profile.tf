resource "aws_iam_user_login_profile" "cloud9_user_login" {
  count = "${length(aws_iam_user.cloud9_user.*.name)}"
  user = "${element(aws_iam_user.cloud9_user.*.name, count.index)}"
  pgp_key = "${var.pgp_key}"

  depends_on = ["aws_iam_user.cloud9_user"]
}
