data "aws_iam_role" "lambda_role_terraform" {
  name = "lambda_role_terraform"
}

data "archive_file" "make_zip" {
  type        = "zip"
  source_file = "test_terraform.py"
  output_path = "test_terraform.zip"
}
