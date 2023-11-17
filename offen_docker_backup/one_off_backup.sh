#!/bin/bash
# docker run --rm \
#   -v data:/backup/data \
#   --entrypoint backup \
#   offen/docker-volume-backup:v2 --env-file ../.env

docker run --rm \
  -v data:/backup/data \
  --env AWS_ACCESS_KEY_ID="" \
  --env AWS_SECRET_ACCESS_KEY="" \
  --env AWS_S3_BUCKET_NAME="" \
  --entrypoint backup \
  offen/docker-volume-backup:v2