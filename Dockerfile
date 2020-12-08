FROM alpine

RUN mkdir -p /opt/sert
COPY ./entrypoint /opt/sert/

RUN apk update && \
  apk add --no-cache openssl && \
  rm -rf /var/cache/apk/* && \
  chmod +x /opt/sert/entrypoint

WORKDIR /opt/sert

CMD [ "/opt/sert/entrypoint" ]