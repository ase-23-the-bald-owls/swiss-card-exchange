#!/bin/bash

set -e

if [ "$1" != "default" ]; then
  exec "$@"
fi
for env_var in "${!NEXT_PUBLIC@}"; do
  sed_command="s|[a-zA-Z][a-zA-Z0-9]*\\.$env_var|\"${!env_var}\"|g"
  find /app/.next/static -type f -print0 | xargs -0 sed -i "$sed_command"
done
exec node server.js
