FROM node:slim
WORKDIR /app
COPY . .
RUN npm ci --production
ENTRYPOINT [ "/app/node_modules/.bin/probot", "receive" ]
CMD ["/app/index.js"]
