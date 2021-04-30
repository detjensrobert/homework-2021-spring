FROM alpine:latest

RUN apk add nodejs

WORKDIR /server

COPY Dockerfile Dockerfile
COPY server.js server.js

EXPOSE 8080

ENTRYPOINT ["node", "server.js"]
