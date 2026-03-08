FROM alpine:latest
RUN apk add --no-cache curl bash
RUN curl -Lo /usr/local/bin/v2ray https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip
CMD ["/usr/local/bin/v2ray", "run"]
