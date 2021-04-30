#!/usr/bin/node

const http = require("http");
const fs = require("fs");

const dockerfile = fs.readFileSync("/server/Dockerfile", { encoding: "utf8" });

// reply to any request with Dockerfile
const server = http.createServer((req, res) => {
  console.log(`got request from ${req.headers.host}`);
  res.write(dockerfile);
  res.end();
});

server.listen(8080);
