##########################################
#             AWS SETTINGS
##########################################
variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "region" {}

##########################################
#             CLOUD9 SETTINGS
##########################################
variable "stop_time_minutes" {}

##########################################
#             IAM SETTINGS
##########################################
variable "username" {
  type = "list"
  # You can specify iam user name here
  default = [
    "test1",
    "test2",
    "test3"
  ]
}

##########################################
#             POLICY SETTINGS
##########################################
variable "change_password_policy_arn" {}

##########################################
#             PGP SETTINGS
##########################################
variable "pgp_key" {}
