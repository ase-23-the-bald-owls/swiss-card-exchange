#!/usr/bin/env bash

echo "Waiting for localstack to start up..."
until curl --output /dev/null --silent --fail http://localhost:4566
do
  sleep 2
done
echo "localstack is ready."
