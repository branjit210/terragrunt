##############################################################
#####  S3 automation result bucket
##############################################################

resource "aws_s3_bucket" "bucket-terragrunt-one" {
  bucket = "${var.env}-bucket-terragrunt-one"
  tags = {name = "bucket-terragrunt-one","terraform" = true}
}

##############################################################
#####  S3 automation result bucket public access block
##############################################################

resource "aws_s3_bucket_public_access_block" "bucket-terragrunt-one" {
  bucket = aws_s3_bucket.bucket-terragrunt-one.id

  block_public_acls       = true      #1
  ignore_public_acls      = true      #2
  block_public_policy     = true      #3     #if only one of them is false, block all public access status is OFF. 
  restrict_public_buckets = true      #4     #if all of them is true, block all public access status if ON. 
}