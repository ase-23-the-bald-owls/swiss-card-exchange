#!/usr/bin/env bash

echo "Waiting for frontend to start up..."
until curl --output /dev/null --silent --fail http://localhost:3000
do
  sleep 2
done
echo "Frontend is ready."
