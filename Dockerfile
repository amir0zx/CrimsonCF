# syntax=docker/dockerfile:1

FROM node:22-alpine AS build
WORKDIR /app

# Yarn v1 is fine here
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . .
RUN yarn build


FROM node:22-alpine AS runner
WORKDIR /app
ENV NODE_ENV=production
ENV PORT=8080
ENV SERVE_STATIC=1

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile --production

COPY --from=build /app/dist ./dist
COPY --from=build /app/server ./server

EXPOSE 8080
CMD ["node", "server/index.mjs"]
