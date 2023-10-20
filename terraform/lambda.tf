resource "aws_lambda_function" "file_converter" {
  function_name = "file-converter"
  role = aws_iam_role.lambda_role.arn
  s3_bucket = aws_s3_bucket.code_bucket.id
  s3_key = aws_s3_object.lambda_code.key
  # layers = [aws_lambda_layer_version.lambda_pg8000_layer.arn]
  runtime = "python3.9"
  handler = "reader.lambda_handler"
}
