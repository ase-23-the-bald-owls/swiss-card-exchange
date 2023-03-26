#!/bin/sh

set -e
set -x

if [ "$1" != "default" ]; then
  exec "$@"
fi

docker volume rm supabase-swag-config-vol || true
docker volume create supabase-swag-config-vol
tar -czf - nginx.conf | docker run -i -v supabase-swag-config-vol:/volume --rm alpine tar -C /volume/ -xzf -

docker volume rm supabase-schema-config-vol || true
docker volume create supabase-schema-config-vol
tar -czf - -C volumes/db . | docker run -i -v supabase-schema-config-vol:/volume --rm alpine tar -C /volume/ -xzf -

envsubst < volumes/api/kong.yml > /tmp/kong.yml
docker volume rm supabase-kong-vol || true
docker volume create supabase-kong-vol
tar -czf - -C /tmp kong.yml | docker run -i -v supabase-kong-vol:/volume --rm alpine tar -C /volume/ -xzf -

docker compose up
