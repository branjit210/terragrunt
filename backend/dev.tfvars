##############################################################
#####  BACKEND CONFIGURATION s3 & DynamoDB
##############################################################

bucket            = "statefile-backend-terragrunt"
region            = "us-east-1"
key               = "statefile-dev"
dynamodb_table    = "terragrunt-statefile-lock-table"