resource "aws_s3_bucket" "cloud9_terraform_state" {
  bucket = "cloud9-terraform-state"
  versioning {
    enabled = true
  }
}
