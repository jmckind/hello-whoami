const http = require("http");
const etag = require('etag');
const uuidv4 = require('uuid/v4');

var server = http.createServer(function(request, response) {
  console.log(request.method + " " + request.url + " " + request.headers['user-agent']);
  response.setHeader('ETag', etag(uuidv4()));
  response.writeHead(200, {"Content-Type": "text/plain"});
  response.write("Hello, I am " + process.env.HOSTNAME + "\n");
  response.end();
});

server.listen(80);
console.log("Server is listening...");
