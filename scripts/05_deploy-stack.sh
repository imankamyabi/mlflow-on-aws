#!/bin/sh

# Usage: ./scripts/05_deploy-stack.sh <Stack Name> <Deploy Bucket Name> <Database Name> <Database Instance Type> <Database Username> <Database Password>

# Available instance types for database: https://aws.amazon.com/rds/aurora/pricing/

aws cloudformation deploy \
    --template-file templates/cloudformation/template.yaml \
    --capabilities CAPABILITY_IAM \
    --stack-name $1 \
    --s3-bucket $2 \
    --s3-prefix deploys \
    --parameter-overrides DatabaseName=$3 DatabaseInstanceType=$4 DbUsername=$5 DbPassword=$6 EBBundleBucket=$2 EBBundleKey=eb-bundle.zip