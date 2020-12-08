# Self Signed TLS

Generate self-signed TLS with [OpenSSL](https://www.openssl.org/) + [Alpine](https://alpinelinux.org/) + [Docker](https://www.docker.com/)

## Usage
```sh
# fill .env
cp .env.example .env
# run with docker-compose
docker-compose up
# or run with docker
docker build -t=local/tls-gen:stable .
docker run -it \
  -v ./certs:/opt/sert/data \
  --name tls-gen \
  --env-file .env \
  local/tls-gen:stable
```