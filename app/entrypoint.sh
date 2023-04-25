#!/bin/bash

set -e

if [ "$1" != "default" ]; then
  exec "$@"
fi

if [ "$NEXT_PUBLIC_SUPABASE_URL" = "$BUILD_SUPABASE_URL" ] \
   || [ "$NEXT_PUBLIC_SUPABASE_ANON_KEY" = "$BUILD_SUPABASE_ANON_KEY" ]; then
  echo "You must specify NEXT_PUBLIC_SUPABASE_URL and NEXT_PUBLIC_SUPABASE_ANON_KEY"
  echo "NEXT_PUBLIC_SUPABASE_URL: $NEXT_PUBLIC_SUPABASE_URL"
  echo "NEXT_PUBLIC_SUPABASE_ANON_KEY: $NEXT_PUBLIC_SUPABASE_ANON_KEY"
  exit 1
fi

for env_var in "${!NEXT_PUBLIC@}"; do
  sed_command="s|process\\.env\\.$env_var|\"${!env_var}\"|g"
  find /app/.next/ -type f -print0 | xargs -0 sed -i "$sed_command"

  sed_command="s|[a-zA-Z][a-zA-Z0-9]*\\.$env_var|\"${!env_var}\"|g"
  find /app/.next/static -type f -print0 | xargs -0 sed -i "$sed_command"
done
exec node server.js
