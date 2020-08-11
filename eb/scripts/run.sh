#!/bin/sh

# Uncomment the following line if upgrading mlflow version in order to update the db schema.
# mlflow db upgrade $DB_URL

python create_schema.py

mlflow server \
    --backend-store-uri "${DB_URL}/${PROJECT_NAME}" \
    --default-artifact-root "${ARTIFACT_PATH}/${PROJECT_NAME}"/ \
    --host 0.0.0.0 \
    --port 5000