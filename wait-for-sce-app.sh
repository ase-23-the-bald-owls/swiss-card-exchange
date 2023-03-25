#!/usr/bin/env bash

echo "Waiting for sce-app to start up..."
until curl --output /dev/null --silent --fail http://localhost:8080
do
  sleep 2
done
echo "sce-app is ready."
