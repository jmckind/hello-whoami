const http = require("http");
const uuidv4 = require('uuid/v4');

var server = http.createServer(function(request, response) {
  console.log("Request received...");
  response.setHeader('ETag', uuidv4());
  response.writeHead(200, {"Content-Type": "text/plain"});
  response.write("Hello, I am " + process.env.HOSTNAME);
  response.end();
});

server.listen(80);
console.log("Server is listening...");
