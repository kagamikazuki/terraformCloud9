resource "aws_iam_group_membership" "cloud9_member" {
  name = "cloud9-membership"
  users = ["${aws_iam_user.cloud9_user.*.name}"]
  group = "${aws_iam_group.cloud9_member_group.name}"
}
