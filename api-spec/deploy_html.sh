#!/bin/bash

if [ -z $DEPLOY_TO ]; then
  echo 'Missing a DEPLOY_TO environment variable.'
  exit 1
fi

if [ -f out/index.html ]; then
  aws s3 sync out/ s3://$DEPLOY_TO --region us-west-2 --exclude ".*"
fi
