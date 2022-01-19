FROM alpine:latest
WORKDIR /app
RUN apt-get update \
  && apt-get install curl gzip bash -y \
  && curl -L "https://github.com/ginuerzh/gost/releases/download/v2.11.1/gost-linux-amd64-2.11.1.gz" > /app/gost.gz \
  && gzip -F -d ./gost.gz \ 
  && rm -rf /var/lib/apt/lists/*
COPY start.sh /app/start.sh
COPY alwayson.sh /app/alwayson.sh
CMD ["/bin/bash","/app/start.sh"]
