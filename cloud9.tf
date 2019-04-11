resource "aws_cloud9_environment_ec2" "cloud9_trial_session_env" {
  instance_type = "t2.nano"
  count = "${length(aws_iam_user.cloud9_user.*.name)}"
  name = "env-${element(aws_iam_user.cloud9_user.*.name, count.index)}"
  automatic_stop_time_minutes = "${var.stop_time_minutes}"
  owner_arn = "${element(aws_iam_user.cloud9_user.*.arn, count.index)}"

  depends_on = ["aws_iam_user.cloud9_user"]
}
