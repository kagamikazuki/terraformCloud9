resource "aws_iam_group_policy" "cloud9_member_policy" {
  name = "cloud9_member_policy"
  group = "${aws_iam_group.cloud9_member_group.id}"
  policy = "${file("policies/cloud9_member_policy.json")}"
}
