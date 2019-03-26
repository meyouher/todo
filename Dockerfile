FROM node:alpine
WORKDIR /app
COPY . .
RUN npm ci --production
ENTRYPOINT [ "/app/node_modules/.bin/probot", "receive", "/app/index.js"]