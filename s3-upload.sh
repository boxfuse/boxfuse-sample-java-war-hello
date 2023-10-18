#!/bin/bash

# Get current date and time
current_datetime=$(date +"%Y-%m-%d_%H-%M-%S")

# AWS S3 bucket name and desired folder prefix
bucket_name="jitu-bucketfull"
folder_prefix="INS-APPS-SVC"

# Create folder name based on current date and time
folder_name="$folder_prefix/$current_datetime"

# Create folder in S3 bucket
aws s3api put-object \
  --bucket "$bucket_name" \
  --key "$folder_name/"

# Upload files to the created folder
file1="/var/lib/jenkins/workspace/gulugulapipeline/target/hello-1.0.war"

aws s3 cp "$file1" "s3://$bucket_name/$folder_name/"

echo "Files uploaded to: s3://$bucket_name/$folder_name/"
