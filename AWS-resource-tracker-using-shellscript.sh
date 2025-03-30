# Author : Abhijith Dhanan
# Date : 30/03/2025
# Version : V1

# Describtion : This shell script is used to list the usage of AWS resource(EC2, S3, IAM users, Lambda)


# List EC2,S3,IAM users,Lambda

#!/bin/bash

#debug

set -x

echo "print EC2 instances (only instance id)"

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

echo "print s3 buckets"

aws s3 ls


echo "print IAM users" 
aws iam list-users

echo "print lambda functions"
aws lambda list-functions

