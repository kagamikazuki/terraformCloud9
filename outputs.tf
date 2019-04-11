output "user_arn" {
  value = "${aws_iam_user.cloud9_user.*.arn}"
}

output "password" {
  value = "${aws_iam_user_login_profile.cloud9_user_login.encrypted_password}"
}
