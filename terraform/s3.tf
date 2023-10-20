resource "aws_s3_bucket" "data_bucket" {
  bucket = "joe-20-oct-data-bucket"
}

resource "aws_s3_bucket" "converted_data_bucket" {
  bucket = "joe-20-oct-converted-data-bucket"
}

resource "aws_s3_bucket" "code_bucket" {
  bucket = "joe-20-oct-code-bucket"
}

data "archive_file" "lambda_zip" {
  type        = "zip"
  source_file = "${path.module}/../src/file_converter/converter.py"
  output_path = "${path.module}/../function.zip"
}

resource "aws_s3_object" "lambda_code" {
  bucket = aws_s3_bucket.code_bucket.id
  key = "s3_file_reader/function.zip"
  source = "${path.module}/../function.zip"
}