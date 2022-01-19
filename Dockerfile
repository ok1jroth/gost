FROM alpine:latest
WORKDIR /app
RUN apt-get update \
  && apt-get install curl gzip \
  && curl -L "https://github.com/ginuerzh/gost/releases/download/v2.11.1/gost-linux-amd64-2.11.1.gz" > /app/gost.gz \
  && gzip -F -d ./gost.gz \ 
  && chmod 755 ./gost \
  && rm -rf /var/lib/apt/lists/* \
CMD ["/app/gost","-L=ws://:80?path=/cu8sm1"]
  
