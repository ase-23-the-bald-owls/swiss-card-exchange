#!/usr/bin/env bash

echo "Waiting for supabase to start up..."
until curl --output /dev/null --silent --fail http://localhost:3000
do
  sleep 2
done
echo "supabase is ready."
