#!/bin/bash

# Define the URL template
url_template="https://q-models.s3.amazonaws.com/{current_date}/spx/volume_oi_all_exp.png"

# Specify the desired date
desired_date="2023-08-07"

# Replace the placeholder in the URL with the desired date
url="${url_template/\{current_date\}/$desired_date}"

# Use the AWS CLI to download the file
# First, extract the bucket name and the file path from the URL
bucket_name=$(echo $url | cut -d '/' -f 4)
file_path=$(echo $url | cut -d '/' -f 5-)

# Download the file to the current directory
# aws s3 cp "s3://$bucket_name/$file_path" "./volume_oi_all_exp_${desired_date}.png"

echo $file_path
