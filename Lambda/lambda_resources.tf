resource "aws_lambda_function" "test_lambda" {
    filename = data.archive_file.make_zip.output_path
    function_name = "test_terraform"
    role = data.aws_iam_role.lambda_role_terraform.arn
    handler = "test_terraform.lambda_handler"
    architectures = ["x86_64"]
    source_code_hash = data.archive_file.make_zip.output_base64sha256
    runtime = "python3.12"

    environment {
      variables = {
        "BackendHost":"https://www.google.com"
      }
    }

    logging_config {
      log_format = "Text"
    }
  
}