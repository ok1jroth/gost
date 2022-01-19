FROM alpine:latest
WORKDIR /app
RUN apk update \
  && apk add --no-cache curl gzip bash -y \
  && curl -L "https://github.com/ginuerzh/gost/releases/download/v2.11.1/gost-linux-amd64-2.11.1.gz" > /app/gost.gz \
  && gzip -F -d ./gost.gz \ 
  && rm -rf /var/cache/apk/*
COPY start.sh /app/start.sh
COPY alwayson.sh /app/alwayson.sh
CMD ["/bin/bash","/app/start.sh"]
