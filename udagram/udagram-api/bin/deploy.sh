#!/usr/bin/env bash

eb init udagram-api --platform "Node.js 18 running on 64bit Amazon Linux 2" --region us-east-1

eb use udagram-api-dev

eb setenv AWS_BUCKET=AWS_BUCKET POSTGRES_HOST=POSTGRES_HOST DB_PORT=DB_PORT POSTGRES_DB=POSTGRES_DB POSTGRES_USERNAME=POSTGRES_USERNAME POSTGRES_PASSWORD=POSTGRES_PASSWORD

eb deploy udagram-api-dev