#!/bin/sh

# Usage: ./scripts/01_create-s3-bucket.sh <Bucket Name> <Region>

aws s3 mb "s3://${1}" --region $2