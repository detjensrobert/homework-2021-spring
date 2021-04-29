FROM alpine:latest

RUN apk add nodejs

COPY Dockerfile /server/Dockerfile
COPY server.js /server/server.js

EXPOSE 8080

ENTRYPOINT exec node /server/server.js
