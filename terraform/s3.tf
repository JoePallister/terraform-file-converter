resource "aws_s3_bucket" "data_bucket" {
  bucket = "joe-20-oct-data-bucket"
}

resource "aws_s3_bucket" "converted_data_bucket" {
  bucket = "joe-20-oct-converted-data-bucket"
}

# resource "aws_s3_object" "demo_object" {
#     key = "test_file.txt"
#     bucket = aws_s3_bucket.demo_bucket.id
#     source = "./test_file.txt"
# }