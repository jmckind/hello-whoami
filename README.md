# hello-whoami

A simple site for saying hello and identifying the host.

## Development

Run a docker container locally on port `8080`.

```
docker run --rm -it -p 8080:80 -v `pwd`:/opt/hello node:8-alpine /bin/sh
```

Once connected to the docker container, navigate to the source directory and
install the required modules.

```
cd /opt/hello
npm install
```

Finally, start the development server.

```
node server.js
```

## Deployment

Build the docker container locally.

```
docker build -t hello-whoami:latest .
```
