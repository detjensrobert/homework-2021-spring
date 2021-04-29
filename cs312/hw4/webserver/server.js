#!/usr/bin/node

const http = require('http');
const fs = require('fs');

const dockerfile = fs.readFileSync("/server/Dockerfile", { encoding: 'utf8' });

const server = http.createServer((req, res) => {
  res.write(dockerfile);
  res.end()
})

server.listen(8080);
