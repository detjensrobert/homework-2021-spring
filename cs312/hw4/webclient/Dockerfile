FROM alpine:latest

RUN apk add curl

WORKDIR /client

COPY client.sh client.sh

ENTRYPOINT ["sh", "client.sh"]
