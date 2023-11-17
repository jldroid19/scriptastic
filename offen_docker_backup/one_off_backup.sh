#!/bin/bash

docker run --rm \
  -v data:/backup/data \
  --env AWS_ACCESS_KEY_ID="<xxx>" \
  --env AWS_SECRET_ACCESS_KEY="<xxx>" \
  --env AWS_S3_BUCKET_NAME="<xxx>" \
  --entrypoint backup \
  offen/docker-volume-backup:v2 --env-file ../.env