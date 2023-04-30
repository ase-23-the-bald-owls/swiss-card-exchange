FROM node:18-alpine AS base

FROM base AS deps

RUN apk add --no-cache g++ python3 make

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci --omit=dev

FROM base AS runner

WORKDIR /app

ENV NODE_ENV production


RUN addgroup --system --gid 1001 app
RUN adduser --system --uid 1001 app

COPY --from=deps /app/node_modules ./node_modules

COPY ./src ./src

ENV NEXT_PUBLIC_SUPABASE_SERVICE_ROLE_KEY=""
ENV NEXT_PUBLIC_SUPABASE_URL=""


CMD ["node","src/index.mjs"]
