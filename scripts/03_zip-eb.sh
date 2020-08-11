#!/bin/sh

# Usage: ./scripts/03_zip-eb.sh
cd ./eb
zip -r ../dist/eb-bundle.zip Dockerrun.aws.json Dockerfile scripts .ebextensions
cd ..