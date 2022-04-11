#1 - Bygg steget
FROM node:17 AS builder
WORKDIR /app
COPY --chown=node:node . .
RUN npm ci
RUN npm run build

#2 - Skapa produktions image
FROM node:17 AS production
WORKDIR /app
COPY --chown=node:node --from=builder ./app/build ./dist
COPY package* .
RUN npm ci --production

CMD node /app/dist/app.js