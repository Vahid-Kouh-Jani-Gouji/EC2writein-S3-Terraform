#!/bin/bash
set -x
sudo yum update -y
echo "Hello, write directly to S3!" > /tmp/hellofromEc2.txt
aws s3 cp /tmp/hellofromEc2.txt s3://${s3}/hellofromEc2.txt

