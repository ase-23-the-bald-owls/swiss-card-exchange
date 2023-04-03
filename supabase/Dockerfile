FROM alpine:3.17.2 AS getenvsubst

ENV BUILD_DEPS="gettext"  \
    RUNTIME_DEPS="libintl"

RUN set -x && \
    apk add --update $RUNTIME_DEPS && \
    apk add --virtual build_deps $BUILD_DEPS &&  \
    cp /usr/bin/envsubst /usr/local/bin/envsubst && \
    apk del build_deps

FROM docker:23.0.1-dind

ENV DOCKER_HOST=unix:///var/run/docker.sock
ENV TINI_SUBREAPER=1

RUN apk add --no-cache tar uuidgen rsync

COPY --from=getenvsubst /usr/local/bin/envsubst /usr/local/bin/envsubst

RUN mkdir -p /app/volumes/ /tmp/pg-init

COPY supabase/app/ /app
COPY app/supabase/migrations/20230315000000_create-products.sql /app/volumes/db/migrations/ZZ01-schema.sql
COPY app/supabase/seed.sql /app/volumes/db/migrations/ZZ99-seed.sql

COPY --from=supabase/postgres:15.1.0.53 /docker-entrypoint-initdb.d /tmp/pg-init
RUN rsync -r /tmp/pg-init/ /app/volumes/db/

COPY supabase/entrypoint.sh /usr/local/bin/entrypoint
RUN chmod +x /usr/local/bin/entrypoint

WORKDIR /app

ENTRYPOINT ["/usr/local/bin/entrypoint"]
CMD ["default"]
