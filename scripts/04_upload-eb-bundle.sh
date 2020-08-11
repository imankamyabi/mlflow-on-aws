#!/bin/sh

aws s3 cp ./dist/eb-bundle.zip "s3://${1}/eb-bundle.zip"