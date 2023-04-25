ARG BUILD_SUPABASE_URL='http://replace-this-url-with-the-correct-one'
ARG BUILD_SUPABASE_ANON_KEY='replace-this-key-with-the-correct-one'

FROM node:18-alpine AS base

FROM base AS deps

RUN apk add --no-cache g++ python3 make

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci

FROM base AS builder
WORKDIR /app

COPY --from=deps /app/node_modules ./node_modules
# the .babelrc.json adds code to allow coverage measurements
# this is not needed in production, but also preserves the data-cy attributes,
# we need for tests (which run against production).
COPY package*.json next.config.js tsconfig.json .eslintrc.json .babelrc.json ./
COPY src src
COPY public public

RUN <<HEREDOC
    set -e
    find . -type f -name '*.cy*' -print0 | xargs -0 rm
    rm -rf src/testutils
HEREDOC

ARG BUILD_SUPABASE_URL
ARG BUILD_SUPABASE_ANON_KEY

ENV NEXT_PUBLIC_SUPABASE_URL=$BUILD_SUPABASE_URL
ENV NEXT_PUBLIC_SUPABASE_ANON_KEY=$BUILD_SUPABASE_ANON_KEY

RUN npm run build

ENV BUILD_SUPABASE_URL=$BUILD_SUPABASE_URL
ENV BUILD_SUPABASE_ANON_KEY=$BUILD_SUPABASE_ANON_KEY

# env variables get inlined by next after a certain application size
# now this inlining is reverted
RUN <<HEREDOC
    set -e

    sed_command="s|\"${BUILD_SUPABASE_URL}\"|process.env.NEXT_PUBLIC_SUPABASE_URL|g"
    find .next/standalone -type f -print0 | xargs -0 sed -i "$sed_command"

    sed_command="s|\"${BUILD_SUPABASE_ANON_KEY}\"|process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY|g"
    find .next/standalone -type f -print0 | xargs -0 sed -i "$sed_command"
HEREDOC

FROM base AS runner

RUN apk add --no-cache bash

WORKDIR /app

ARG BUILD_SUPABASE_URL
ARG BUILD_SUPABASE_ANON_KEY

ENV NODE_ENV=production
ENV NEXT_PUBLIC_SUPABASE_URL=$BUILD_SUPABASE_URL
ENV NEXT_PUBLIC_SUPABASE_ANON_KEY=$BUILD_SUPABASE_ANON_KEY

RUN addgroup --system --gid 1001 nodejs
RUN adduser --system --uid 1001 nextjs

COPY --from=builder /app/public ./public

COPY --from=builder --chown=nextjs:nodejs /app/.next/standalone ./
COPY --from=builder --chown=nextjs:nodejs /app/.next/static ./.next/static

ENV BUILD_SUPABASE_URL=$BUILD_SUPABASE_URL
ENV BUILD_SUPABASE_ANON_KEY=$BUILD_SUPABASE_ANON_KEY

COPY entrypoint.sh /usr/local/bin/entrypoint
RUN chmod +x /usr/local/bin/entrypoint

USER nextjs

EXPOSE 8080

ENV PORT 8080

ENTRYPOINT ["entrypoint"]

CMD ["default"]
